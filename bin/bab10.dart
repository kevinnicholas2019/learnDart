import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:http/http.dart' as http;

void bab10() {
  /**
   * Asynchronous Programming
   * Concurrency in Dart
   * thread adalah urutan perintah yang akan dieksekusi komputer. ada proglang
   * yang support multi-threading, akan menjalankan thread secara bersamaan.
   * 
   * Dart adalah single-threaded language
   * Dart memilih single-threaded secara sengaja dan memiliki banyak kelebihan.
   * 
   * Parallelism vs Concurrency
   * Parallelism : multiple task jalan secara bersamaan pada multiple processors atau CPU Cores.
   * Concurrency : multiple task namun pada single CPU cores.
   * 
   * Parallelism bagus, namun akan ribet jika terjadi bug (debugnya susah)
   * dikarenakan state memorynya sama
   * 
   * Dart Isolates
   * Dart single-thread menggunakan isolate, setiap isolate mengalokasi memory.
   * sehingga sensitive data lebih secure.
   * 
   * synchronous vs asynchronous code
   * synchronous adalah bersamaan dalam waktu.
   * asynchronous adalah tidak bersamaan dalam waktu.
   * 
   * the event loop (postponeable task)
   * guna untuk mengeksekusi task yang sebelumnya ditunda.
   * 2 queues event loop :
   * - microtask queue (lebih banyak digunakan)
   * - event queue (digunakan ketika ada events, seperti user touching the screen)
   * 
   * cara kerja the event loop :
   * - sync task di main isolate thread selalu berjalan, tidak diinterupsi.
   * - jika dart mencari long-running task yang sudah diizinkan dipostponed, dart memasukkannya ke event queue
   * - ketika dart selesai menjalankan sync task, event loop akan mengerjakan microtask queue,
   *   jika microtask queueu masih memiliki task, the event loop meletakkan nya ke main thread dahulu untuk dieksekusi selanjutnya.
   *   the event loop akan cek microtask queue sampai abis.
   * - jika sync-task dan microtask-queue kosong, maka event loop mengirim task selanjutnya di event queue untuk di run di main thread.
   *   setelah sudah sampai main, bakaln diexecuted secara synchronously.
   * - jika ada microtask baru, event loop bakal handle sebelum next event queue.
   * - process ini akan berulang sampai queue habis.
   * 
   * Running code parallel
   * menggunakan dart isolate.spawnm,
   * misal read file di sistem, tidak terjadi di dart thread. sistem mengerjakannya didalam proses itu sendiri.
   * sekali sistem selesai mengerjakannya, maka result nya akan kembali ke dart dan dart menjadwalkan code untuk handle
   * hasilnya didalam event queue.
   * 
   * cara lainnya buat new dart isolate, isolate ini memiliki memori sendiri dan thread sendiri, 
   * yang akan bekerja dengan main isolate. create isolate lebih baik digunakan terhadap task yang bakalan lama di main thread
   * sehingga perlu dibackup dengan isolate baru.
   * 
   * Futures
   * Futures kayak promises di js
   * 
   * The Future type
   * Future<int> countTheAtoms(); //contoh signature future
   * 
   * States Futures :
   * 1. uncompleted
   * 2. success
   * 3. error
   */

  print('Before the future');

  //Contoh Futures
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );
  print(myFuture);

  //getting the result with callback
  myFuture
      .then((value) => print('Value: $value'))
      .catchError((error) => print('Error: $error'))
      .whenComplete(() => print('Future is complete'));

  print('After the future');
  //nunggu syncronization code sampai selesai baru ngejalanin future nya

  void asyncAwaitFunc() async {
    print('Before the future');

    try {
      final value = await Future<int>.delayed(
        Duration(seconds: 1),
        () => 42,
      );
      // throw Exception('There was an error'); // kalo mau ke error
      print('Value: $value');
    } catch (error) {
      print(error);
    } finally {
      print('Future is complete!');
    }

    print('After the future');
  }

  asyncAwaitFunc();

  // ignore: slash_for_doc_comments
  /**
   * Async network requests
   */
  Future<void> getRequestTodo() async {
    try {
      final url = 'https://jsonplaceholder.typicode.com/todos/1';
      final parsedUrl = Uri.parse(url);
      final response = await http.get(parsedUrl);
      final statusCode = response.statusCode;
      if (statusCode == 200) {
        final rawJsonString = response.body;
        final jsonMap = jsonDecode(rawJsonString);
        final todo = Todo.fromJson(jsonMap);
        print("Hasil todo: $jsonMap");
      } else {
        throw HttpException('$statusCode');
      }
    } on SocketException catch (error) {
      print(error);
    } on HttpException catch (error) {
      print(error);
    } on FormatException catch (error) {
      print(error);
    }
  }

  getRequestTodo();

  void miniExercises() async {
    try {
      final message = await Future.delayed(
          Duration(seconds: 2), () => "I am from the future");
      print(message);
    } catch (error) {
      print(error);
    }
  }

  miniExercises();

  // ignore: slash_for_doc_comments
  /**
   * Streams
   * multiple values of future
   * 
   * Subscribing to a stream
   * adding an assets file
   */

  Future<void> readingFileAsString() async {
    final file = File('bin/text.txt');
    final contents = await file.readAsString();
    print(contents);
  }

  readingFileAsString();

  /**
   * Streams
   * Increasing the file size
   * jika file nya besar, dapat menggunakan stream. contoh
   */
  Future.delayed(Duration(seconds: 3), () {
    var index = 0;
    final file = File('bin/text_long.txt');
    final stream = file.openRead();
    // final broadcastStream = stream.asBroadcastStream(); //jika ingin lebih dari 1 objek, harus menggunakan stream asBroadcastStream
    stream.listen((data) =>
        print("${++index}: ${data.length}")); //ini single subscription stream
    // broadcastStream.listen(print);
    // stream.listen(print);
  });

  // ignore: slash_for_doc_comments
  /**
   * Streams
   * Using asynchronous for loop
   * async-await
   */

  Future<void> usingAsyncForLoop() async {
    print("Using async for loop:");
    final file = File('bin/text_long.txt');
    final stream = file.openRead();
    await for (var data in stream) {
      print(data.length);
    }
    print("Using async for loop END");
  }

  Future.delayed(Duration(seconds: 4), usingAsyncForLoop);

  /**
   * Error Handling Streams
   */

  Future.delayed(Duration(seconds: 5), () {
    final file = File('bin/text_long_asd.txt');
    final stream = file.openRead();
    stream.listen(
      (data) {
        print(data.length);
      },
      onError: (error) {
        print(error);
      },
      onDone: () {
        print('All finished');
      },
      cancelOnError: false, //kalau true, otomatis ke cancel kalo terjadi error
    );
  });

  //note, ketika error, tidak terjadi cancel stream dan masih melanjutkan streams untuk receive data,
  //jika ingin cancel the stream setelah itu baru ke error, harus check cancelOnError = true
  //ketika stream berhasil mengirim semua data, maka bisa callback di onDone

  /**
   * Error Handling Streams
   * using try-catch
   */
  Future.delayed(Duration(seconds: 6), () async {
    try {
      final file = File('bin/pink_elephants.txt');
      final stream = file.openRead();
      await for (var data in stream) {
        print(data.length);
      }
    } on Exception catch (error) {
      print(error);
    } finally {
      print("All finished");
    }
  });

  /**
   * Cancelling a stream
   * cancelOnError dibikin true
   */

  Future.delayed(Duration(seconds: 7), () {
    final file = File('bin/text_long.txt');
    final stream = file.openRead();
    StreamSubscription<List<int>>? subscription;
    subscription = stream.listen(
      (data) {
        print("Stream Cancelled!");
        print(data.length);
        subscription?.cancel();
        print("Stream Cancelled Status: Ended!");
      },
      cancelOnError: true,
      onDone: () {
        print(
            'Stream Cancelled Status: All finished'); //ini tidak muncul, karena dicancel
      },
    );
  });

  /**
   * Transforming a stream
   * jadi hasil data stream file berbentuk UTF-8 (karena int 1 byte),
   * sehingga perlu convert (decoding) dari UTF-8 ke string,
   * ini agar ngirim data secara network lebih ringan menggunakan UTF-8
   */

  /**
   * Transforming a stream : viewing the bytes
   */
  // Future.delayed(Duration(seconds: 8), () {
  //   final file = File('bin/text_long.txt');
  //   final stream = file.openRead();
  //   print("viewing the bytes");
  //   stream.listen((data) => print(data)); // [76, 111, 114, 101, ... ] hanya 1 bytes (karena int jadinya UTF-8)
  // });

  /**
   * Transforming a stream : decoding the bytes
   */
  // Future.delayed(Duration(seconds: 8), () async {
  //   final file = File('bin/text_long.txt');
  //   final stream = file.openRead();
  //   print("viewing the bytes");
  //   await for (var data in stream.transform(utf8.decoder)) {
  //     print(data); //jadi string, karena didecode
  //   }
  // });

  /**
   * Mini-Exercises
   */
  Future.delayed(Duration(seconds: 8), () async {
    final myStream = Stream<int>.periodic(
      Duration(seconds: 1),
      (value) => value,
    ).take(10);
    await for (var data in myStream) {
      print(data);
    }
  });

  Future<String> playHideAndSeekTheLongVersion() async {
    var counting = 0;
    await Future(() {
      for (var i = 1; i <= 10000000000; i++) {
        //stuck di sync dan async
        counting = i;
      }
    });
    return '$counting! Ready or not, here I come!';
  }

  Future<void> appStopingOnAsyncCode() async {
    print("Ok, I'm counting...");
    print(await playHideAndSeekTheLongVersion());
  }

  //appStopingOnAsyncCode();

  // ignore: slash_for_doc_comments
  /**
   * Pakai Isolates Spawn
   */
  void playHideAndSeekTheLongVersionForIsolate(SendPort sendPort) {
    var counting = 0;
    for (var i = 1; i <= 1000000000; i++) {
      counting = i;
    }
    sendPort.send('$counting! Ready or not, here I come!');
  }

  void usingIsolateSpawn() async {
    final receivePort = ReceivePort();
    final isolate = await Isolate.spawn(
      playHideAndSeekTheLongVersionForIsolate,
      receivePort.sendPort,
    );
    receivePort.listen((message) {
      print(message);
      receivePort.close();
      isolate.kill();
    });
  }

  Future.delayed(Duration(seconds: 9), usingIsolateSpawn);

  //kalo pake flutter, gunakan compute(fungsi, pass_value)
}

class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}
