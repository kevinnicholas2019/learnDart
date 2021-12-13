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
   * Running code parallel
   * menggunakan dart isolate.spawn
   * 
   * Futures
   * Futures kayak promises di js
   * States Futures :
   * 1. uncompleted
   * 2. success
   * 3. error
   */

  print('Before the future');

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

  Future<void> asyncAwaitFunc() async {
    print('Before the future');

    try {
      final value = await Future<int>.delayed(
        Duration(seconds: 1),
        () => 42,
      );
      print('Value: $value');
    } catch (error) {
      print(error);
    } finally {
      print('Future is complete!');
    }

    print('After the future');
  }

  asyncAwaitFunc();
}