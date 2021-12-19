import 'dart:convert';
import 'dart:io';
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
   * contoh read file
   */

  Future<void> readingFileAsString() async {
    final file = File('assets/text.txt');
  }
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
