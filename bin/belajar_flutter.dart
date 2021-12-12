import 'dart:math';
import 'package:characters/characters.dart';

import 'bab9.dart';

void main() {
  bab9();
}

void bab2() {
  /// Kevin Nicholas
  ///
  /// loremloremloremloremloremloremloremloremloremloremloremlorem
  /// loremloremloremloremloremloremloremloremloremloremloremlorem
  String kevinNicholas() {
    return "kevin nicholas";
  }

  // This is a comment
  // this is also a comment,
  // over multiple lines

  /* This is a comment
	And inside it is
	another comment */

  //Documentation Comments

  ///Single-Documentation (inline-docs)

  /**
	 * 
	 * Block-Documentation
	 * 
	 */

  //Koment support menggunakan markdown

  /// You can use [CodeBlockExample] like this:
  ///
  /// ```dart
  /// var example = CodeBlockExample();
  /// print(example.isItGreat); // "Yes."
  /// ``` ``` meaning fench lines

  print("Hello, Dart Apprentice reader!");

  var someCondition = true;
  if (someCondition) {
    //code block
  }

  /*  Statements, kalimat yang do something
      print('Hello, Dart Apprentice reader!');
  */
  /*  Expressions, kalimat yang not do something, but it's something
      42
      3 + 2
      'Hello, Dart Apprentice reader!'
      x
  */

  /**
   * Arithmetic Operations
   * tambah +
   * kurang -
   * kali *
   * bagi /
   */

  print(2 + 6);

  /**
   * Decimal Numbers
   * 22/7
   * 3.141252532523
   * 22 ~/ 7 => ini nanti hasilnya jadi int round up
   * ~/ (truncating division operator)
   */

  /**
   * Euclidean Modulo Operation 
   * % sisa...
   * 28 % 10
   */

  /**
   * Order : % / * + -
   * kalau bingung pake tanda kurung aja biar udh pasti sesuai kemauan ordering
   */

  /**
   * Math Functions
   * 
   * import 'dart:math';
   * 
   * ```dart
   * print(sin(45 * pi / 180));
   * print(cos(45 * pi / 180));
   * print(sqrt(2));
   * print(max(5, 10));
   * print(min(-5, -10) * -1);
   * print(max(5, 10) == min(-5, -10) * -1);
   * ```
   * 
   */

  print(sin(45 * pi / 180));
  print(cos(45 * pi / 180));
  print(sqrt(2));
  print(max(5, 10));
  print(min(-5, -10) * -1);
  print(max(5, 10) == min(-5, -10) * -1);

  /**
   * Mini-Exercise
   */
  print(sin(45 * pi / 180));
  print(1 / sqrt(2));
  print(sqrt(2) / 2);
  print(sin(45 * pi / 180) == 1 / sqrt(2));

  /**
   * Naming Data
   */

  //Variables
  int number = 10; //int adalah type-annotation
  number = 15;

  double apple = 3.14124124; //double is high precisions

  // semua type adalah object
  // [Notes] dart tidak memiliki primitive variable types, kayak swift EVERYTHING IS A OBJECT.
  // int dan double subclasses of num

  //karena semua objek maka bisa seperti ini
  print(10.isEven); //true
  3.14159.round(); //3

  //Type Safety
  int myInteger = 10;
  //myInteger = 124.124124214; //NO, not allowed

  //kalau mau bisa decimal maupun integer, gunakan num
  num myNumber;
  myNumber = 10;
  myNumber = 3.1412;
  // myNumber = 'ten'; // no, can't

  //Mau bisa semuanya ? pakai dynamic (dangerous, non-safety)
  dynamic myVar;
  myVar = 10;
  myVar = 3.14124;
  myVar = "ten";

  //Type Inference
  var someNumber = 10; //inferred-type, mutable-data
  someNumber = 15;
  //someNumber = 3.14159; //NO, error

  //Constants
  //value tidak bisa diubah ketika sudah diinit
  //called immutable-data
  const konstan = 10;
  // konstan = 0; //NO

  //Final Constants (runtime constants)
  //kegunaan final ini, digunakan ketika valuenya masih belum diketahui,
  //tapi harus konstan kalo sudah ada.
  //ini berguna ketika :
  //  -fetch data dari server
  //  -query the device settings
  //  -ask a user to input their age
  final hourSinceMidnight = DateTime.now().hour;
  //final set once, beda dengan konstan ga bisa diubah dan harus langsung diinit.
  final contohFinal;
  contohFinal = "asddsa"; //final bisa seperti ini

  // const testConst; //disini saja sudah error
  // testConst = "asddsa";

  // pertama coba pake const dulu, kalo compiler bilang ga bisa, baru ke final
  // kalo tetep ga bisa lempar komputer lo

  /**
   * Using Meaningful names
   * 
   * good name :
   * personAge
   * numOfPeople
   * gradePointAvg
   * 
   * bad name :
   * a
   * temp
   * average
   * 
   * dart lowerCamelCase for var dan const
   * 
   */

  /**
   * Mini-Exercises 2
   */
  int myAge = 24;
  double averageAge = (myAge + 25) / 2;
  const testNumber = 100;
  const evenOdd = testNumber % 2;
  // testNumber = 50; // Error cause const

  /**
   * Increment & Decrement
   */

  var counter = 0;
  counter += 1; //1
  counter -= 1; //0

  //incre and decre only by 1
  counter++;
  counter--;

  double myValue = 10;

  myValue *= 3; //30
  myValue /= 2; //15

  /**
   * Challenges bab 2
   */
  const myAge2 = 24;
  int dogs = 0;
  dogs++;

  int age;
  age = 16;
  print(age);
  age = 30;
  print(age);

  const x = 46;
  const y = 10;

  const a1 = (x * 100) + y;
  const a2 = (x * 100) + (y * 100);
  const a3 = (x * 100) + (y / 10);

  const rating1 = 1.125;
  const rating2 = 5.125;
  const rating3 = 8.125;
  const avgRating = (rating1 + rating2 + rating3) / 3;

  const a = 1.5;
  const b = 2.5;
  const c = 3.5;
  var diskriminan = b * b - 4 * a * c;
  final root1 = (-b + sqrt(diskriminan)) / 2 * a;
  final root2 = (-b - sqrt(diskriminan)) / 2 * a;

  //Kesimpulan
  /**
   * 
   * Key points
      •Code comments are denoted by a line starting with //, or by multiple lines bookended with /* and */. 
      •Documentation comments are denoted by a line starting with /// or multiple lines bookended with /** and */. 
      •You can use print to write to the debug console. 
      •The arithmetic operators are: Addition: +
        Subtraction: -
        Multiplication: *
        Division: /
        Truncating division: ~/
        Modulo (remainder): %
      •Dart has many functions including min, max, sqrt, sin and cos. You’ll learn many more throughout this book. 
      •Constants and variables give names to data. 
      •Once you’ve declared a constant, you can’t change its data, but you can change a variable’s data at any time. 
      •If a variable’s type can be inferred, you can replace the type with the var keyword. 
      •The const keyword is used for compile-time constants while final is used for runtime constants. 
      •Always give variables and constants meaningful names to save yourself and your colleagues headaches later. 
      •Operators that perform arithmetic, and then assign back to the variable, are: 
   */
}

void bab3() {
  //Bab 3

  /**
   * Data Types in Dart
   * int
   * double
   * num
   * dynamic
   * String
   * 
   * Semua type didalam dart adalah Object.
   */

  /**
   * Type Inference 
   */

  /**
   * Type Inference - Annotating variables explicity
   * sebelum nama variable jangan lupa isi type-annotation (int, double, ...)
   */
  int myInteger = 10;
  double myDouble = 3.14;

  /**
   * Creating constant variables
   * cara bikin immutable
   */
  const int myInteg3r = 10;
  const double myDoubl3 = 3.14;

  final int myInteg3r2 = 10;
  final double myDoubl32 = 3.14;

  const myInteger2 = 10; //type inference
  const myDouble2 = 3.14; //type inference

  /**
   * Checking the type at runtime
   */
  num myNumber = 3.14;
  print(myNumber is double); //true
  print(myNumber is int); //false
  print(myNumber is num); //false
  print(myNumber.runtimeType);

  /**
   * Type Conversion
   */
  var integer = 100;
  var decimal = 12.5;
  // integer = decimal; //error, karena store double ke int variabel
  //a value of type 'double' can't be assigned to a variable of type 'int'.
  //kalo prolang lain bisa convert otomatis tanpa dinotif
  integer = decimal.toInt();

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  const totalCost = hourlyRate * hoursWorked;
  final totalCostInt = (hourlyRate * hoursWorked).toInt();
  const double actuallyDouble = 3;

  /**
   * Casting down
   */

  num someNumber = 3;
  // print(someNumber.isEven); //num don't have that property
  final someInt = someNumber as int;
  print(someInt.isEven);
  // final someDouble = someNumber as double; //crash
  // as tidak bisa cast int ke double karena sibling type
  // print(10 as double); // crash, karena bukan int bukan subtype double

  /**
   * Mini-Exercises
   */
  const age1 = 42;
  const age2 = 21;

  const averageAge = (age1 + age2) / 2;

  /**
   * Strings
   * sebenarnya string nanti akan diterjemahkan ke angka, jadi dari karakter ke angka yang namanya
   * karakter set.
   * ketika mengetik karakter di keyboard, sebenarnya komputer menerjemahkan tersebut ke angka (ex: 1001010101)
   * karakter mapping paling umum adalah Unicode.
   * emoji is from japan, e gambar, moji adalah karakter
   * unicode umumnya di dart pake base16 (hex)
   */

  var greeting = 'Hello, Dart';
  greeting = 'Hello, Flutter!';

  /**
   * Dart Strings are collection of UTF-16.
   * 65,536 characters in the world.
   * UTF-16 memiliki cara spesial agar bisa menggunakan code point diatas 65,536
   * yaitu surrogate pairs.
   */
  print(greeting.codeUnits);

  const dart = '🎯';
  print(dart.codeUnits);
  // [55356, 57263] codepoint surrogate pair, karena diatas 65,536 codepoint aslinya
  print(dart.runes); //jadi codepoint
  const flag = '🇲🇳';
  print(flag.runes);
  // (127474, 127475), tidak semuanya unicode official aktif untuk memperbarui bendera negara,
  // sehingga 🇲🇳 hanyalah sebuah 2 unicode code points yang berupa M dan N menjadi 1
  const family = '👨‍👩‍👧‍👦';
  print(family.runes);
  // (128104, 8205, 128105, 8205, 128103, 8205, 128102)
  // setiap semua karakter menempel semua, dikarenakan menggunakan 8205 (ZW or Zero Width Joiner)
  print(family.length); // 11
  print(family.codeUnits.length); // 11
  print(family.runes.length); // 7
  //sehingga length mengiktui panjang codeUnits
  //biar length nya bisa kebaca sesuai user-perceived-characters, ada plugin package characters.
  //gunanya untuk ngitung length dan ambil substring karakter sesuai kemampuan kita sebagai user menghitung
  //tiap karakter emoji yang menempel misalnya
  print(family.characters.length); // 1  characters package

  /**
   * Concatenation
   */
  var message = 'Hello' + ' my name is ';
  const name = 'Kevin';
  message += name;
  print(message);

  final message2 = StringBuffer();
  message2.write('Hello');
  message2.write(' my name is ');
  message2.write(name);
  print(message2.toString());

  /**
   * Interpolation
   */
  const intro = "Hello my name is $name";
  print(intro);

  const oneThird = 1 / 3;
  const sentence = 'One Third is $oneThird';
  print(sentence);
  final sentence2 = 'One Third is ${oneThird.toStringAsFixed(3)}';
  print(sentence2);

  /**
   * Multi-line Strings
   */
  const bigString =
      '''Lorem ipsum dolor sit amet consectetur adipisicing elit. 
Repellendus at qui quae a ipsam quam cumque pariatur quo expedita! Facilis, 
illo? Dicta eaque optio eligendi explicabo omnis, nihil molestiae iure.''';
  print(bigString);
  const twoLines = 'This is\ntwo lines.';
  print(twoLines);
  const rawString =
      r'My name \n is $name.'; //ignore every special character like \n
  print(rawString);

  /**
   * Inserting Characters Unicode
   */
  print('I \u2764 u so much!');
  //kalo hex nya lebih dari FFFF kasih curly braces {}
  print('I \u2764 \u{1F3AF} so much!');

  /**
  * Mini Exercises
  */
  const firstName = "Kevin";
  const lastName = "Nicholas";
  const fullName = "$firstName $lastName";
  const myDetails = "Hello, my name is $fullName";
  print(myDetails);

  /**
   * Object & Dynamic Types
   */
  dynamic myVariable = 42;
  myVariable = 'hello'; // OK

  var myVariable2; // defaults to dynamic
  myVariable2 = 42; // OK
  print(myVariable2);
  myVariable2 = 'hello'; // OK
  print(myVariable2);

  Object? myVariable3 = 42; //? for nullability
  myVariable3 = 'hello'; // OK

  /**
   * Challenges
   */
  var attPoints = 90;
  var homeworkPoints = 90;
  var examPoints = 90;

  final attendance = attPoints * (20 / 100);
  final homework = homeworkPoints * (30 / 100);
  final exam = examPoints * (50 / 100);

  final grade = attendance + homework + exam;
  print(grade);

  const twoCountries = '🇹🇩🇷🇴';
  print(twoCountries.characters.length);
  //TD dan RO

  const vote = 'Thumbs up! 👍🏿';
  print(vote.codeUnits); //4
  print(vote.codeUnits.length); //15
  //2

  const name2 = 'Ray';
  // name2 += ' Wenderlich'; //error cause compile-constant

  const value = 10 / 2; //double

  const number = 10;
  const multiplier = 5;
  final summary = '$number \u00D7 $multiplier = ${number * multiplier}';
  print(summary); //string
}

void bab4() {
  /**
   * Control Flow
   * untuk memilih (decisions)
   */

  /**
   * Boolean Values
   * boolean hanya memiliki 2 value = true (1 = on) dan false (0 = off)
   * Invented by George Boole, pembuat konsep true dan false didalam bidang matematika
   */
  const bool yes = true;
  const bool no = false;

  const yes2 = true;
  const no2 = false;

  /**
   * Boolean Operators
   */

  //Equality
  const doesOneEqualTwo = (1 == 2);
  const doesOneEqualTwo2 = 1 == 2; //tanpa parentheses bisa,
  //cuman ada case lain perlu digunakan agar hasilnya tidak salah
  print(doesOneEqualTwo);

  //Not Equality
  const doesOneNotEqualTwo = 1 != 2;
  const doesOneNotEqualTwo2 = !(1 == 2);

  //greater and less than
  const isOneGreaterThanTwo = 1 > 2; //false
  const isOneLessThanTwo = 1 < 2; //true

  print(1 <= 2); //true
  print(2 <= 2); //true
  print(2 >= 1); //true
  print(2 >= 2); //true

  /**
   * Boolean Logic
   */

  //&& AND
  const isSunny = true;
  const isFinished = true;
  const willGoCycling = isSunny && isFinished;
  print(willGoCycling);

  // || OR
  const willTravelToAustralia = true;
  const canFindPhoto = false;
  const canDrawPlatypus = willTravelToAustralia || canFindPhoto;
  print(canDrawPlatypus);

  /**
   * Operator Precedence
   * 
   * !
   * >= > < <=
   * == !=
   * &&
   * ||
   */
  const andTrue = 1 < 2 && 4 > 3;
  const andFalse = 1 < 2 && 3 > 4;
  const orTrue = 1 < 2 || 3 > 4;
  const orFalse = 1 == 2 || 3 == 4;

  print(3 > 4 && 1 < 2 || 1 < 4);
  print(false && true || true); //true

  /**
   * String Equality
   */
  const guess = 'dog';
  const dogEqualsCat = guess == 'cat';
  print(dogEqualsCat);

  /**
   * Mini Exercises
   */
  const myAge = 24;
  const isTeenager = myAge >= 13 && myAge <= 19;
  print(isTeenager);
  const maryAge = 30;
  const bothTeenagers = isTeenager && (maryAge >= 13 && maryAge <= 19);
  print(bothTeenagers);
  const String reader = 'Kevin Nicholas';
  const String ray = 'Ray Wenderlich';
  const rayIsReader = reader == ray;

  /**
   * The If Statement
   */

  if (2 > 1) {
    print('Yes, 2 is greater than 1.');
  }

  /**
   * The else clause
   */
  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is a house pet.');
  } else {
    print('Animal is not a house pet.');
  }

  /**
   * Else-if chains
   */
  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = "Stop";
  } else if (trafficLight == 'yellow') {
    command = "Slow down";
  } else if (trafficLight == 'green') {
    command = "Go";
  } else {
    command = "INVALID COLOR!";
  }

  print(command);

  /**
   * Varible scope
   * jika mendefinisikan variabel didalam scope, 
   * maka diluar scope dari itu tidak bisa mengakses variabel yang berada didalam variabel scope
   */
  const global = 'Hello, world';

  void main2() {
    const local = 'Hello, main';

    if (2 > 1) {
      const insideIf = 'Hello, anybody?';

      print(global);
      print(local);
      print(insideIf);
    }

    print(global);
    //karena dibuku kasih tau global variabel itu diluar main function, itu namanya top-level variable
    print(local);
    // print(insideIf); //not allowed, undefined name 'insideIf'
    // biasakan pembuatan variabel, jika scope itu membutuhkan tanpa memberikan akses keluar.
  }

  main2();

  /**
   * The ternary conditional operator
   */
  const score = 83;

  String message;
  if (score >= 60) {
    message = 'You passed';
  } else {
    message = 'You failed';
  }

  const message2 = score >= 60 ? 'You passed' : 'You Failed';
  print(message2);

  /**
   * Mini Exercises
   */
  const myAge2 = 24;
  if (myAge2 >= 13 && myAge2 <= 19) {
    print("Teenager");
  } else {
    print("Not a teenager");
  }
  const answer = myAge2 >= 13 && myAge2 <= 19 ? "Teenager" : "Not a teenager";

  /**
   * Switch statements
   * switch
   * case
   * break
   * default
   */

  const number = 3;
  if (number == 0) {
    print('zero');
  } else if (number == 1) {
    print('one');
  } else if (number == 2) {
    print('two');
  } else if (number == 3) {
    print('three');
  } else if (number == 4) {
    print('four');
  } else {
    print('something else');
  }

  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('something else');
  }

  /**
   * Note: In Dart, switch statements don’t support ranges like number > 5. Only == equality checking is
   * allowed. If your conditions involve ranges, then you should use if statements. 
   */

  /**
   * Switching on strings
   */
  const weather = 'cloudy';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }

  /**
   * Enumerated types (enums)
   * guna untuk menghindari case default yang tidak perlu, maka menggunakan enum
   * notes, hanya bisa di top-level
   * enum weather ada di bawah fungsi bab4()
   * penamaan enums kayak kelas camelcapitalized-case
   */
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen.');
      break;
    case Weather.snowy:
      print('Get your skis.');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella.');
      break;
  }
  print(weatherToday);
  final index = weatherToday.index; // 2
  /**
   * ada cara lain kalo ga mau pake switch, pakai polymorphism
   */

  /**
   * Mini Exercises
   */
  const audioState = AudioState.paused;
  switch (audioState) {
    case AudioState.paused:
      print('Audio paused.');
      break;
    case AudioState.stopped:
      print('Audio stopped.');
      break;
    case AudioState.playing:
      print('Audio still playing.');
      break;
  }

  /**
   * Loops
   */

  //While Loops
  while (true) {
    if (true) break;
  }

  var sum = 1;
  while (sum < 10) {
    sum += 4;
    print(sum);
  }

  //do-while loops, kerja sekali baru, looping
  sum = 1;
  do {
    sum += 4;
    print(sum);
  } while (sum < 10);

  //menghentikan looping
  sum = 1;
  while (true) {
    sum += 4;
    if (sum > 10) {
      break; //pakai break
    }
  }

  //a random interlude
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    //random mulai dari angka 0 - 5
    print('Not a six!');
  }
  print('Finally, you got a six!');

  //for loops
  for (var i = 0; i < 5; ++i) {
    print(i);
  }

  //continue keyword
  for (var i = 0; i < 5; ++i) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  //for-in loops
  const myString = 'I ❤ Dart';

  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }

  //for-each loops
  const myNumbers = [
    1,
    2,
    3,
  ];
  myNumbers.forEach((number) => print(number));
  myNumbers.forEach((number) {
    print(number);
  });

  /**
   * Mini exercises
   */
  var counter = 0;
  while (counter < 10) {
    print('Counter is ${counter++}');
  }

  for (var i = 1; i <= 10; ++i) {
    print(i * i);
  }

  const numbers = [1, 2, 4, 7];
  for (var numb in numbers) {
    print(numb * numb);
  }
  numbers.forEach((n) => print(n * n));

  /**
   * Challenges
   */

  //different scope

  //true
  //false
  //true
  //true

  const targetNumb = 12415;
  var trial = 1;
  var times = 0;
  while (trial < targetNumb) {
    trial *= 2;
    ++times;
  }
  print('Next power of 2 >= $targetNumb is $trial '
      'which is 2 to the power of $times.');

  const fiTargetNumb = 32;
  var oldFiValue = 0;
  var fiValue = 1;
  for (var i = 0; i <= fiTargetNumb; ++i) {
    if (i > 0) {
      var temp = oldFiValue;
      oldFiValue = fiValue;
      fiValue += temp;
    }
    print(fiValue);
  }

  //6

  var targetLooping = 10;
  for (var i = 0; i <= targetLooping; ++i) {
    print(targetLooping - i);
  }

  for (var i = 0.0; i <= 1.0; i += 0.1) {
    print(i.toStringAsFixed(1));
  }
}

enum Weather {
  sunny,
  snowy,
  cloudy,
  rainy,
}

enum AudioState {
  playing,
  paused,
  stopped,
}

void bab5() {
  // ignore: slash_for_doc_comments
  /**
   * Functions
   * - Named Functions
   * - Anonymous Functions
   * apel (input) => blender (fungsi) => jus apel (output)
   */

  /**
   * Don't repeat yourself (clean a.k.a DRY)
   * This term was originally coined 
   * in the book The Pragmatic Programmer 
   *                        
   *                       by Andrew Hunt and David Thomas
   */

  /**
   * Anatomy of a Dart function
   */
  String compliment(int number) {
    //diatas ini tanpa '{', merupakan 'function signature'
    return "$number is a very nice number."; //didalam curly brace ini namanya 'function body'
  }

  // String : return type
  /**
   * tipe output dari fungsi tersebut, yaitu string berarti hasilnya string.
   */

  // compliment : function name
  /**
   * nama fungsi (lowerCamelCase)
   */

  // int : parameter type
  /**
   * tipe parameter (input), menggunakan int
   */

  // number : parameter name
  /**
   * nama parameter setelah parameter type (lowerCamelCase)
   */

  // return "$number is a very nice number." :
  /**
   * karena tipe output sudah ditentukan, maka hasilnya harus sesuai tipe output.
   * yaitu string, sehingga return ini memberikahn hasil outputnya.
   */

  /**
   * dart support top-level functions.
   * function inside class adalah method (bab6)
   * perbedaan parameter dan argument,
   * parameter adalah tipe input dan nama inputnya
   * argument adalah value yang di pass dari luar kedalam melalui parameter.
   */

  /**
   * more about parameters
   */

  //using multiple parameters

  void helloPersonAndPet(String person, String pet) {
    //positional parameters, karena masukin parametersnya harus berurutan
    print('Hello, $person, and your furry friend, $pet!');
  }

  helloPersonAndPet('Fluffy', 'Chris');

  //Making parameters optional
  // helloPersonAndPet(); //errors, karena input ga dikasi

  String fullName(String first, String last, [String? title]) {
    if (title != null) {
      return '$title $first $last';
    } else {
      return '$first $last';
    }
  }

  print(fullName('Ray', 'Wenderlich'));
  print(fullName('Albert', 'Einstein', 'Professor'));

  bool withinTolerance(int value, [int min = 0, int max = 0]) {
    return min <= value && value <= max;
  }

  withinTolerance(5); //true
  withinTolerance(15); //false
  withinTolerance(9, 7, 11); //true
  withinTolerance(9, 7); //true

  //naming parameters
  bool withinTolerance2(int value, {int min = 0, int max = 10}) {
    return min <= value && value <= max;
  }

  withinTolerance2(9, min: 7, max: 11); // true
  withinTolerance2(9, max: 11, min: 7); // true
  withinTolerance2(5); // true
  withinTolerance2(15); // false
  withinTolerance2(5, min: 7); // false
  withinTolerance2(15, max: 20); // true

  //making named parameters required

  bool withinTolerance3({
    required int value,
    int min = 0,
    int max = 10,
  }) {
    return min <= value && value <= max;
  }

  withinTolerance3(value: 9, min: 7, max: 11);

  // ignore: slash_for_doc_comments
  /**
   * Writing good functions
   */

  //Avoiding side effects
  void hello() {
    print('Hello!');
    //kalo fungsi ini ada side effect, yaitu ke print kalo panggil ini fungsi
  }

  //solve side effect like this to pure functions
  String hello2() {
    return 'Hello!';
    //kalo fungsi ini tidak memiliki efek samping,
    //sehingga dinamakan 'pure function'
  }

  var myPreciousData = 89242;

  String anInnocentLookingFunction(String name) {
    myPreciousData = -1;
    return 'Hello, $name, Heh, heh, heh.';
  }

  print(myPreciousData);
  anInnocentLookingFunction("Kevin Nicholas");
  print(myPreciousData);

  //Doing only one thing (single responsibility principle)

  //Choosing good names
  // - kalo ga ada side effect, nama biasa aja
  // - kalo ada side effect atau misal fungsi itu kebanyakan kerjaannya
  // (not single), kasih penamaan yang ada hubungan efek sampingnya
  // - jangan menulis ulang yang sudah ada diparameter

  /**
   * Optional Types, bisa bikin fungsi singkat kayak dibawah
   */
  compliment2(number) {
    //tapi tipe number jadi dynamic
    return '$number is a very nice number.';
  }

  // ignore: slash_for_doc_comments
  /**
   * Mini-exercises
   */
  String youAreWonderful(String name) {
    return "You're wonderful, $name";
  }

  print(youAreWonderful("Bob"));

  String youAreWonderful2(String name, int numberPeople) {
    return "You're wonderful, $name. $numberPeople people think so";
  }

  print(youAreWonderful2("Bob", 10));

  String youAreWonderful3({
    required String name,
    int numberPeople = 30,
  }) {
    return "You're wonderful, $name. $numberPeople people think so";
  }

  print(youAreWonderful3(name: "Bob"));

  /**
   * Anonymous Functions
   */

  //First-class citizens

  //artinya bisa treat fungsi ke tipe lain,
  //seperti store fungsi ke variabel, pass fungsi ke parameter,
  //return berupa fungsi

  //Assigning function to variabel

  int number = 3;
  String greeting = 'hello';
  bool isHungry = true;
  Function multiply = (int a, int b) {
    return a * b;
  };

  // Function myFunction = int multiply(int a, int b) {
  //   return a * b;
  // } // error

  //Passing functions to functions
  void namedFunction(Function anonymousFunction) {
    //'higher-order functions'
    //function body
  }

  //Returning functions from functions
  Function namedFunction2() {
    //ini namanya 'higher-order functions'
    return () {
      print("Hello");
    };
  }

  namedFunction2()();

  //Using anonymous functions
  final multiply2 = (int a, int b) {
    return a * b;
  };

  print(multiply2(2, 3));

  Function applyMultiplier(num multiplier) {
    return (num value) {
      return value * multiplier;
    };
  }

  final triple = applyMultiplier(3);
  print(triple(6));
  print(triple(14.0));

  //anonymous function in foreach loops
  const numbers = [1, 2, 3];
  numbers.forEach((number) {
    final tripled = number * 3;
    print(tripled);
  });

  /**
   * Closures & Scope
   * anonymous function adalah closures.
   * closure maksudnya "closes around" the surrounding scope.
   * memiliki akses variabel dan fungsi yang didefiniskan didalam scope
   */
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
  };
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  incrementCounter();
  print(counter); //5

  Function countingFunction() {
    var counter = 0;
    final incrementCounter = () {
      counter += 1;
      return counter;
    };
    return incrementCounter;
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();

  print(counter1()); //1
  print(counter2()); //1
  print(counter1()); //2
  print(counter1()); //3
  print(counter2()); //2

  /**
   * Mini-Exercises
   */
  final wonderful = (String name) {
    return "You're wonderful, $name";
  };
  const people = ['Chris', 'Tiffani', 'Pablo'];
  people.forEach((name) {
    print(wonderful(name));
  });

  /**
   * Arrow-Functions
   */
  // int add(int a, int b) {
  //   return a + b;
  // }

  int add(int a, int b) => a + b;

  //(parameters) => expression;

  //Refactoring func to arrow-func

  // final multiply = (int a, int b) {
  //   return a * b;
  // };

  final multiply3 = (int a, int b) => a * b;

  // Function applyMultiplier(num multiplier) {
  //   return (num value) {
  //     return value * multiplier;
  //   };
  // }
  applyMultiplier2(num multiplier) => ((num value) => value * multiplier);
  print(applyMultiplier2(3)(5));

  // numbers.forEach((number) {
  //   final tripled = number * 3;
  //   print(tripled);
  // });

  numbers.forEach((number) => print(number * 3));

  /**
   * Mini-Exercise
   */
  people.forEach((name) => print(wonderful(name)));

  /**
   * Challenges
   */
  bool isPrime(int num) {
    if (num <= 3) return num > 1;

    if ((num % 2 == 0) || (num % 3 == 0)) return false;

    var count = 5;

    while (pow(count, 2) <= num) {
      if (num % count == 0 || num % (count + 2) == 0) return false;

      count += 6;
    }

    return true;
  }

  print(isPrime(317));

  int repeatTask(int times, int input, Function task) {
    for (int i = 0; i < times; ++i) {
      input = task(input);
    }
    return input;
  }

  print(repeatTask(4, 2, (input) {
    return input * input;
  }));

  int repeatTask2(int times, int input, Function task) =>
      times == 0 ? input : repeatTask2(times - 1, task(input), task);

  print(repeatTask2(3, 2, (input) => input * input));

  //repeatTask(4, 2, (times, input) => );

  /**
   * tambahan
   * belajar SOLID
   * aspek dart adalah hard-and-fast rules
   */

  /**
   * SOLID
   * Single : 1 kelas memiliki satu tanggung jawab
   * 
   * Open-Closed : kelas yang sudah berjalan dengan baik, 
   * tidak boleh dimodifikasi langsung, harus diextend dengan kelas baru.
   * 
   * Liskov-substitution : dapat mengubah fungsi kelas yang sesuai dengan kelas
   * tersebut. bebek mainan contohnya, bisa quack tapi butuh baterai, abstraksi
   * nya salah berarti bebek mainan tidak valid untuk extend dari bebek binatang
   * 
   * Interface Segregation : ada method yang ga digunakan ketika diextend,
   * maka perlu dipisah, jadi satu bagian abstraksi.
   * 
   * Depedency Inversion : High-level module tidak boleh 
   * bergantung dengan lower-level module
   */
}

void bab6() {
  /**
   * Classes
   */

  /**
   * Dart Classes
   * classes digunakan untuk membuat objek,
   * Dart tidak memiliki tipe primitive (int, double, bool ini kan dari C)
   * method (fungsi dalam class) dan constructor (fungsi untuk init class)
   */

  /**
   * Defining a Class
   * class hanya bisa di top-level
   * define class User
   */

  /**
   * Creating an object from a class
   * object adalah instance
   * creating object adalah instantiating a class
   */

  final user = User(); //ini menggunakan constructor method

  /**
   * The optional keyword new
   */
  final user2 = new User();

  /**
   * Assigning values to properties
   */
  user.name = 'Ray'; //dot notation untuk akses properties
  user.id = 42;

  /**
   * Dart allows :
   * multiple classes in one file
   * top-level function and top-level variabel in one file
   * letak class/fungsi/variabel tidak dipermasalahkan
   */
  print(testtest);

  /**
   * Printing an object
   */
  print(user); //instance berupa object user
  //sehingga perlu menggunakan method toString didalam class User
  //print(User(id: 42, name: 'Ray'));

  /**
   * put toString method di paling bawah body class
   */

  /**
   * Adding Methods
   */

  //Understanding object serialization

  ///Serialization proses convert data ke string, agar bisa dipass melewati
  ///network (JSON)
  ///
  ///Deserialization proses convert string ke object data type.

  //Adding a JSON serialization method

  ///bukan toJSON tapi toJson
  ///JSON dart data type called Map.
  ///dart sudah sediakan converting JSON dengan menggunakan library dart:convert

  print(user.toJson());

  /**
   * Cascade notation
   */
  final user3 = User();
  user.name = 'Ray';
  user.id = 42;

  final user5 = User()
    ..name = 'Ray'
    ..id = 42;

  /**
   * Constructor
   */

  /**
   * Default constructor
   * kalau misal constructornya belum dibuat, sudah ada default constructornya
   * dengan parameter kosong.
   */

  /**
   * Custom constructors
   * 'generative constructor' artinya nama fungsi constructor harus sama dengan 
   * kelas.
   * 
   * long-form constructor
   * short-form constructor
   */

  /**
   * Named constructors
   * generative constructor yang ke 2 adalah named constructor
   * kalau contohnya menggunakan constructor tanpa nama constuctor 
   * (unnamed constructor)
   */

  final _anonymousUser = User2.anonymous();
  print(_anonymousUser);

  /**
   * Forwading constructors
   * menggunakan colon dan this
   * contoh
   * User2.anonymous() : this(10, 'asd');
   */

  /**
   * Optional and Named parameters
   */

  //MyClass([this.myProperty])

  //MyClass({this.myProperty})

  //MyClass({required this.myProperty})

  /**
   * Private variables
   * dengan menggunakan underscore (_), membuat 'library private', 
   * bukan 'class private'
   * 
   * sehingga kalau menggunakan class namun bisa mengakses private property,
   * dikarenakan masih satu file yang sama, jika berbeda file maka tidak bisa
   * diakses.
   * 
   * ex: var _test = "asd";
   * 
   * User3({
   *   id = 0,
   *   name = 'anonymous',
   * })  : _id = id,    <--ini namanya initializer-list
   *      _name = name;
   *
   * 
   *  member variables secara umum adalah fields. 
   *  kalo field public dinamakan properties
   */

  /**
   * Checking for errors
   * assert, check statements secara runtime dan debugging (kalo sudah released 
   * build, assert tidak berguna).
   * jika assert conditional nya ada yang false, app langsung terminated.
   * 
   * User3({
   *   id = 0,
   *   name = 'anonymous',
   * })  :
   *     assert(id >= 0),
   *     assert(name.isNotEmpty), 
   *      _id = id,
   *      _name = name;
   * 
   */

  /*print(User3(id: -1, name: "")); //error cause assert false*/

  /**
   * Constant Constructor
   * cara lain tidak menggunakan private var (kalau private memang tidak bisa akses), 
   * agar tidak ada yang bisa modifikasi (immutable).
   */

  const user6 = User4(id: 24, name: 'Kevin');
  const anonymousUser = User4.anonymous();

  /**
   * Kegunaan Constant di dart
   * 
   * 'canonical instances', mau seberapa banyak instance yang dibuat selama
   * properties yang digunakan selalu sama, Dart akan hanya menganggap 
   * 1 intances saja. const penting pada dart dan flutter.
   */

  /**
   * Factory Constructor
   * dapat mencari existing instances atau subclasses
   */

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User4.fromJson(map);
  print(manda);

  /**
   * Dart Objects
   * Objects bertindak secara reference ke instance class didalam memory
   * ex:
   * class Myclass {
   *  var myProperty = 1;
   * }
   * 
   * final myObject = MyClass();
   * final anotherObject = myObject;
   * print(myObject.myProperty);    // 1
   * anotherObject.myProperty = 2;
   * print(myObject.myProperty);    // 2
   */

  /**
   * Getters
   * ex:
   * int get asd => _asd;
   */

  /**
   * Setters
   * ex:
   * set value(String dsa) => _asd = dsa;
   */

  /**
   * Static Members
   */
  final value = SomeClass.myProperty;
  SomeClass.myMethod();

  /**
   * Static Variables
   * adalah konstan dan biasanya digunakan oleh singleton-pattern
   * - static variabel didalam class yaitu class variables
   * - non-static variabel didalam class yaitu instance variables
   * - variabel didalam method yaitu local variable 
   * - top-level variabel diluar class yaitu global variable
   */

  //Constants

  ///
  // static const myConstant = '42'; //error kalau didalam fungsi

  //Singleton Pattern

  /**
   * Static Methods
   * - Utility Methods : kayak helper method gitu, yang dibuat didalam class, 
   * tetapi tidak dibuat untuk instance (singleton)
   * - Creating new Objects : bisa dibuat guna factory pattern
   * - Comparing static methods with factory constructors
   *    - factory constructor hanya bisa return tipe class itu sendiri,
   *        static bisa return apa saja.
   *    - factory constructor bisa unnamed constructor, sedangkan static harus
   *        mendefinisikan nama static method itu sendiri
   *    - factory constructor bisa const (immutable), sedangkan static tidak bisa.
   */

  /**
   * Challenges bab 6
   */
  final bert = Student("Bert", "", 95);
  final ernie = Student("Ernie", "", 85);
  print(bert);
  print(ernie);

  var bola = Sphere(radius: 12);
  print("Area Sphere r = 12 : ${bola.area.toStringAsFixed(2)}");
  print("Volume Sphere r = 12 : ${bola.volume.toStringAsFixed(2)}");

  /**
   * Ada waktu belajar Design pattern
   */
}

class MyClass {
  var myProperty = 'Hello, Dart!'; //property (data)

  //constructor
  MyClass();

  void myMethod() {
    //method
    print(myProperty);
  }
}

class User {
  int id = 0;
  String name = '';

  @override //@ adalah annotations
  String toString() {
    return "User#$id: $name";
  }

  String toJson() {
    //karena JSON singkatan, tapi penulisan tetep jadi Json
    return '{"id":$id, "name":"$name"}';
  }
}

var testtest = "asdasdasd";

// ignore: slash_for_doc_comments
/**
 * Mini Exercise bab 6
 */
class Password {
  String value = "";

  @override
  String toString() {
    return value;
  }

  bool isValid() => value.length > 8;
}

class User2 {
  //dart convention, constructor harus sebelum property variabel

  // User2(int id, String name) {
  //   //ini namanya long-form constructor
  //   this.id = id;
  //   //ini namanya 'shadowing', karena menggunakan this,
  //   //kalo tidak ambiguity karena variabel penamaanya sama
  //   this.name = name;
  // }

  User2(
    this.id,
    this.name,
  ); //kalau ini short-form constructor, unnamed constructor

  // User2.anonymous() {
  //   //named constructor
  //   id = 0;
  //   name = 'anonymous';
  // }

  User2.anonymous() : this(0, 'anonymous'); //Forwarding Constructors

  int id;
  String name;
}

class User3 {
  User3({
    // this._id = 0, //error, private variabel tidak bisa digunakan pada named parameters
    id = 0,
    name = 'anonymous',
  })  : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;

  User3.anonymous() : this();

  int _id;
  String _name;
}

class User4 {
  const User4({
    // this._id = 0, //error, private variabel tidak bisa digunakan pada named parameters
    int id = 0,
    String name = 'anonymous',
  })  : assert(id >= 0),
        _id = id,
        _name = name;

  const User4.anonymous() : this();

  factory User4.ray() {
    return User4(id: 42, name: 'Ray');
  }

  // User4.fromJson(Map<String, Object> json) //named-constructor, ini bisa diextend
  //     : _id = json['id'] as int,
  //       _name = json['name'] as String;

  factory User4.fromJson(Map<String, Object> json) {
    //gabisa diextend
    final userId = json['id'] as int;
    final username = json['name'] as String;
    return User4(id: userId, name: username);
  }

  final int _id; //immutable property
  final String _name;

  int get id => _id; //getter
  String get name => _name; //getter
  bool get isBigId => _id > 1000; //calculated properties
}

/**
 * Mini-Exercises bab 6
 */
class Password2 {
  const Password2(this.value);

  final String value;
}

class Email {
  var _address = '';

  String get value => _address;
  set value(String address) => _address = address;
}

//static-members
class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello Dart!');
  }
}

class User6 {
  const User6({
    this.id = _anonymousId,
    this.name = _anonymousName,
  }) : assert(id >= 0);

  final int id;
  final String name;

  static const _anonymousId = 0;
  static const _anonymousName = 'anonymous';
}

/**
 * Singleton Pattern
 * artinya hanya ada 1 instance object aja ketika runtime.
 * biasanya singleton digunakan untuk database helper, 
 * agar tidak terjadinya multiple connection.
 */

// class MySingleton {
//   MySingleton._(); //kalo nama pendek private constructornya
//   // MySingleton._internal(); //kalo nama panjang private constructornya
//   static final MySingleton instance =
//       MySingleton._(); //lazily initialized (kyk swift aja)
// }

// final mySingleton = MySingleton.instance;

class MySingleton {
  MySingleton._(); //kalo nama pendek private constructornya
  // MySingleton._internal(); //kalo nama panjang private constructornya
  static final MySingleton _instance =
      MySingleton._(); //lazily initialized (kyk swift aja)
  factory MySingleton() => _instance;
  //kegunaan factory ini berguna kalo misal mau diganti ke generative constructor,
  //yang diinit ga perlu ngubah2 lagi.
}

final mySingleton = MySingleton();

/**
 * Challenges bab 6
 */
class Student {
  Student(this.firstName, this.lastName, this.grade);

  final String firstName;
  final String lastName;
  final int grade;

  @override
  String toString() {
    return "$firstName $lastName with Grade $grade";
  }
}

class Sphere {
  const Sphere({radius})
      : assert(radius > 0),
        _radius = radius;

  final num _radius;

  num get volume => (area * _radius) / 3;
  num get area => 4 * pi * _radius * _radius;

  static num pi = 3.14159265359;
}

void bab7() {
  /**
   * Nullability
   * dari dulu dart udah ada namanya null, cuman diatas versi 2.12, dart
   * memilih untuk mengabaikan null dengan fitur terbarunya 'null safety'.
   */

  /**
   * what null means
   * artinya tidak ada value, kosong, zero
   */
  // int postalCode = null; //dibawah dart 2.12, masih bisa. sekarang ini dilarang.

  /**
   * the problem with null
   * karena ketika datanya null, 
   * lalu memanggil method yang sesuai dengan tipe kelasnya, 
   * itu langsung error dikarenakan null tidak dapat mengakses
   * method yang diminta karena null.
   */

  //ex:
  // void main() {
  //   print(isPositive(3));  // true
  //   print(isPositive(-1)); // false
  // }

  // bool isPositive(int anInteger) {
  //   return !anInteger.isNegative;
  // }

  // print(isPositive(null));
  // NoSuchMethodError: The getter 'isNegative' was called on null.
  // hanya bisa digunakan versi dibawah 2.12

  /**
   * Nullable vs non-nullable types
   */

  /**
   * non-nullable types
   * secara default dart non-nullable >= 2.12
   * contoh int, double, bool, String, User
   */

  /**
   * nullable types
   * contoh int?, double?, bool?, String?, User?
   * kalau deklarasi variabel jika tidak store value, maka variabel null
   */
  int? age;
  double? height;
  String? message;

  print(age);
  print(height);
  print(message);

  /**
   * Mini exercises
   */
  String? profession;
  profession = "baksetball player";
  const iLove = 'Dart';

  /**
   * Handling nullable types
   */
  String? name;
  // print(name.length); //compile-time error

  //Type promotion adalah dart analyzer
  //yang berguna mendeteksi error diproblems vscode
  name = 'Ray';
  print(name.length);

  //Flow analysis
  //ngecek nya bertahap, sehingga fungsi dibawah ini aman dicompile.
  // bool isPositive(int? anInteger) {
  //   if (anInteger == null) {
  //     return false;
  //   }
  //   return !anInteger.isNegative;
  // }

  //Null-aware operators
  //if-null operator ??

  String? message2;
  final text = message2 ?? 'error'; //if-null

  //null-aware assignment ??=

  double? fontSize;
  fontSize ??= 20.0;

  //null-aware akses properti and memanggil method  ?.

  int? age2;
  print(age2?.isNegative); //null-aware access operator
  print(age2?.toDouble()); //null-aware method invocation operator

  //null assertion ! (bang operator)

  bool? isBeautiful(String? item) {
    if (item == 'flower') {
      return true;
    } else if (item == 'garbage') {
      return false;
    }
    return null;
  }

  bool flowerIsBeautiful = isBeautiful('flower')!;
  print(flowerIsBeautiful);

  //null-aware cascade operator ?..

  User7? user;
  user
    ?..name = 'Ray'
    ..id = 42;

  //null-aware index operator ?[]

  List<int>? myList = [1, 2, 3];

  myList = null;

  print(myList?[2]); //null-aware index operator

  //null-aware spread operator ...? (chapter 8)

  //initializing non-nullable fields (di User8 yah)

  //nullable instance variables (di User9)

  /**
   * the late keyword
   * artinya lazy init, dipanggil propertynya baru ke init.
   * kalau late-final init harusnya aman,
   * tapi late juga bisa digunakan terhadap non-final init (danger).
   * berikut contoh danger non-final init
   */

  // var user10 = User10("");

  var user11 = User11();
  // print(user11.name); //error disini langsung

  ///jadi artinya late harus dipakai ketika
  ///data nya sudah pasti tidak null atau sudah diinit
  ///pastika tidak menggunakan non-final init
}

class User7 {
  String? name;
  int? id;
}

class User8 {
  // String name; //error non-nullable
  // String name = 'anonymous'; //cara pertama, init propertynya langsung
  //cara kedua, init formals
  // User8(this.name);
  // String name;
  //cara ketiga, initializer list
  // User8(String name) : _name = name;
  // String _name;
  //cara keempat, default param values
  // User8([this.name = 'anonymous']); //optional atau named
  //cara kelima, required name param
  User8({required this.name});
  String name;
}

class User9 {
  User9({this.name});
  String? name;
}

class TextWidget {
  String? text;

  bool isLong() {
    if (text == null) {
      return false;
    }

    return text!.length > 100;
  }
}

class User10 {
  User10(this.name);

  final String name;
  // final int _secretNumber =
  //     _calc(); //error, karena belum diinstance jadi ga bisa main panggil langsung, sehingg menggunakan late
  late final int _secretNumber = _calc();

  int _calc() {
    return name.length + 42;
  }
}

class User11 {
  late String name;
}

void bab8() {
  /**
   * Collections
   * - Lists
   * - Sets
   * - Maps
   */

  /**
   * Lists
   * ini data struktur cocok sekali buat kebutuhan ordering 'Objects'.
   * List sama saja dengan array.
   */
  var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts = []; //masih array of strings
  var snacks = []; //infer to dynamic
  List<String> snacks2 = []; //list string, <> ini notation untuk generic type
  var snacks3 = <String>[]; //best practice

  //Printing Lists
  desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  print(desserts);

  //Accessing elements
  final secondElement = desserts[1]; // [1] subscript notation
  print(secondElement);

  final index = desserts
      .indexOf('pie'); //kalau tahu valuenya, cuman males cari tahu indexnya
  final value = desserts[index];

  //Assigning values to list elements
  desserts[1] = 'cake';

  //Adding elements to a list
  desserts.add('brownies');
  print(desserts);

  //Removing elements from a list
  desserts.remove('cake');
  print(desserts);

  //mutable & immutable lists
  var desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  desserts2 = [];
  desserts2 = ['cookies', 'cupcakes', 'donuts', 'pie'];

  final desserts3 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts3 = []; // not allowed
  // desserts3 = ['cake', 'ice cream']; // not allowed
  // desserts3 = someOtherList; // not allowed
  desserts3.remove('cookies'); // OK
  desserts3.remove('cupcakes'); // OK
  desserts3.add('ice cream'); // OK

  //deeply immutable lists
  const desserts4 = ['cookies', 'cupcakes', 'donuts', 'pie'];
  // desserts4.add('brownie'); // not allowed
  // desserts4.remove('pie');  // not allowed
  // desserts4[0] = 'fudge';   // not allowed

  final modifiableList = [DateTime.now(), DateTime.now()];
  final unmodifiableList = List.unmodifiable(modifiableList);
  // unmodifiableList.add("asd"); //not allowed

  //list properties
  const drinks = ['water', 'milk', 'juice', 'soda'];
  print(drinks.first); //water
  print(drinks.last); //soda
  print(drinks.isEmpty); //false
  print(drinks.isNotEmpty); //true

  //looping over the element of a list
  print("looping biasa elements:");
  for (var dessert in desserts) {
    print(dessert);
  }
  print("foreach print elements:");
  desserts.forEach(print);

  /**
   * Code as UI
   * didart collection bisa digunakan diflutter untuk fungsi seperti
   * spread operator (...)
   * collection if
   * collection for
   * 
   * Flutter UI menggunakan widgets seperti column, row dan stack, yang nanti
   * akan dimasukkan ke list.
   */

  //Spread Operator
  const pastries = ['cookies', 'croissants'];
  const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
  const desserts5 = ['milk tea', ...pastries, ...candy];
  print(desserts5);
  //null spread operator
  List<String>? coffees;
  final hotDrinks = ['milk tea', ...?coffees];
  print(hotDrinks);

  //collection if
  const peanutAllergy = true;
  const candy2 = [
    'Junior Mints',
    'Twizzlers',
    if (!peanutAllergy) 'Reeses',
  ];
  //keunggulannya walau konstant-compile time, tapi bisa dinamis
  //tanpa harus modifikasi.
  print(candy2);

  //collection for
  var bigDesserts = [
    'ARABIAN',
    for (var desert in desserts5) desert.toUpperCase(),
  ]; //tidak bisa const

  //mini exercises
  List<String> months = [];
  for (var month in [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ]) {
    months.add(month);
  }

  final List<String> months2 = [];
  for (var month in [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ]) {
    months2.add(month);
  }

  print(months);
  print(months2);

  final monthUpperCase = [
    for (var month in months2) month.toUpperCase(),
  ];
  print(monthUpperCase);

  /**
   * Sets
   * koleksi tapi hanya unique element, tidak boleh duplicates
   * cocok untuk dealing dengan large datasets
   */
  final Set<int> someSet = {}; //set int
  final someSet2 = <int>{}; //set int
  final anotherSet = {1, 2, 3, 1}; //inferred set int
  print(anotherSet);

  //operation/method on a set
  print(anotherSet.contains(1)); //true
  print(anotherSet.contains(99)); //false

  //adding single elements
  final someSet3 = <int>{};
  someSet3.add(42);
  someSet3.add(2112);
  someSet3.add(42);
  print(someSet3); // { 42, 2112 }
  //removing elements
  someSet3.remove(2112);
  print(someSet3); // 42
  //adding multiple elements
  someSet3.addAll([1, 2, 3, 4]);
  print(someSet3);
  //intersection dan unions
  //intersection
  final setA = {8, 2, 1, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  final intersection = setA.intersection(setB);
  print(intersection);
  final union = setA.union(setB);
  print(union); //union
  //sets intinya ga jauh beda sama list, karena sibling classnya

  /**
   * Maps
   * key-value pairs
   * like hashmaps dan dictionaries
   */

  //creating an empty map
  final Map<String, int> emptyMap = {};
  final emptyMap2 = <String, int>{};
  final emptySomething = {};
  //ini jadinya dictionary defaultnya <dynamic, dynamic>
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };

  final digitToWord = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
  };

  print(inventory);
  print(digitToWord);

  //Unique keys
  final treasureMap = {
    'garbage': 'in the dumpster',
    'glasses': 'on your head',
    'gold': 'in the cave',
    // 'gold': 'under your mattress', bisa tapi jadinya nimpa, hanya yang 'under ...'
  };

  print(treasureMap);

  final treasureMap2 = {
    'garbage': ['in the dumpster'],
    'glasses': ['on your head'],
    'gold': ['in the cave', 'under your mattress'],
  };

  print(treasureMap2);

  //Operation on a map
  final numberOfCakes =
      inventory['cakes']; //ada null safety, sehingga valuenya int?
  print(numberOfCakes?.isEven);

  //Adding element to a map
  inventory['brownies'] = 3;
  print(inventory);

  //Updating an element
  inventory['cakes'] = 1;
  print(inventory);

  //Removing elements from a map
  inventory.remove('cookies');

  //Map Properties
  print(inventory.isEmpty); //false
  print(inventory.isNotEmpty); //true
  print(inventory.length); //4
  print(inventory.keys); //only-keys
  print(inventory.values); //only-values

  //Checking for key
  print(inventory.containsKey('pies')); //true
  print(inventory.containsValue(42));

  //Looping over element of a map
  for (var key in inventory.keys) {
    print(inventory[key]);
  }

  inventory.forEach((key, value) => print("$key => $value")); //foreach

  for (final entry in inventory.entries) {
    print('${entry.key} => ${entry.value}');
  }

  //mini exercises
  final myInformation = {
    "name": "Kevin Nicholas",
    "profession": "Programmer",
    "country": "Indonesia",
    "city": "Jakarta"
  };

  myInformation["country"] = "Canada";
  myInformation["city"] = "Toronto";
  myInformation.forEach((key, value) => print("$key -> $value"));

  /**
   * Higher order methods
   * - map
   * - filter
   * - reduce
   * - fold
   * - sort
   */

  //Mapping over a collection
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number); //Iterable<int>
  print(squares);
  squares.toList(); //kelist

  //Filtering a collection
  final evens = squares.where((square) => square.isEven);

  //mengubah koleksi menjadi kesatuan values (consolidating a collection)
  //using reduce
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);
  //jika amount kosong, fungsi reduce error karena element tidak ada
  print(total);

  //using fold
  const amounts2 = <int>[];
  final total2 =
      amounts2.fold(0, (int sum, element) => sum + element); //no error
  print(total2);

  //sorting list
  final desserts10 = ['cookies', 'pie', 'donuts', 'brownies'];
  desserts10.sort();

  //reversing list
  var dessertsReversed = desserts10.reversed; //tidak mengubah koleksi
  desserts10.sort((a, b) => a.compareTo(b)); //asc (default)
  desserts10.sort((b, a) => a.compareTo(b)); //desc

  //mini-exercisese
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  print(scores.first); //lowest
  print(scores.last); //highest
  print(
      scores.where((element) => element >= 80 && element <= 90)); //all grade b

  //list buat ordering, searching jelek
  //sets buat penataan koleksi
  //maps buat searching

  //Challenges
  const paragraphOfText = 'Once upon a time there was a Dart programmer who '
      'had a challenging challenge to solve. Though the challenge was great, '
      'a solution did come. The end.';

  void challenge1() {
    /// Challenge 1: A unique request
    ///
    /// Write a function that takes a paragraph of text and returns a
    /// collection of unique String characters that the text contains.
    Set<String> uniqueCodePoints(String text) {
      return text.runes
          .map((codePoint) => String.fromCharCode(codePoint))
          .toSet();
    }

    print(uniqueCodePoints(paragraphOfText));
  }

  challenge1();
}
