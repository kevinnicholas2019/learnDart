// ignore: slash_for_doc_comments
/**
 * Advanced Classes
 * - inheritance
 * - interface
 * - mixins
 * - extensions
 */

// ignore: slash_for_doc_comments
/**
 * Extending Classes
 * is called inheritance
 */

enum Grade {
  A,
  B,
  C,
  D,
  E,
  F,
}

class Person {
  Person(this.givenName, this.surname);

  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class StudentWrong {
  StudentWrong(this.givenName, this.surname);

  String givenName;
  String surname;
  var grades = <Grade>[];
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

// ignore: slash_for_doc_comments
/**
 * Person dan Student memiliki kesamaan method,
 * sehingga lebih baik Student extends Person
 */

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);

  var grades = <Grade>[];

  @override
  String get fullName => "$surname, $givenName";
}

// ignore: slash_for_doc_comments
/**
 * Calling super last in an init-list
 * kalo ingin menggunakan init-list dan assert, super/this harus paling belakang
 */

class SomeParent {}

class SomeChild extends SomeParent {
  SomeChild(double height)
      : assert(height != 0), //assert
        _height = height, //init-list
        super();
  //forward parent constructor, call super() secara implicit seperti ini,
  // tidak penting karena sudah default kalau diextends

  final double _height;
}

void usingTheClasses() {
  // ignore: slash_for_doc_comments
  /**
   * Using the classes
   */
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);
  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);
}

// ignore: slash_for_doc_comments
/**
 * Overriding method
 * class Student extends Person {
    Student(String givenName, String surname) : super(givenName, surname);

    var grades = <Grade>[];

    @override
    String get fullName => "$surname, $givenName"; <-- ini contoh override
  }
 */

// ignore: slash_for_doc_comments
/**
   * class SomeParent {
    void doSomeWork() {
      print('parent working');
    }
  }

  class SomeChild extends SomeParent {
    @override
    void doSomeWork() {
      super.doSomeWork(); //jika ingin panggil doSomeWork lama
      print('child doing some other work');
    }
  }
 */

// ignore: slash_for_doc_comments
/**
 * Multi-level hierarchy
 */

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

// ignore: slash_for_doc_comments
/**
 * Sibling Classses
 */
class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

void siblingClasses() {
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  print(jessie);
  print(marty);
}

// ignore: slash_for_doc_comments
/**
 * Prefer composition over inheritance
 * composition = has a
 * inheritance = is a
 */

// ignore: slash_for_doc_comments
/**
 * Mini exercises
 */
class Fruit {
  Fruit({required this.color});

  final String color;
  void describeColor() => print(color);
}

class Melon extends Fruit {
  Melon({required color}) : super(color: color);
}

class Watermelon extends Melon {
  Watermelon({required color}) : super(color: color);

  @override
  void describeColor() => print("The color of this watermelon is $color.");
}

class Cantaloupe extends Melon {
  Cantaloupe({required color}) : super(color: color);
}

// ignore: slash_for_doc_comments
/**
 * Abstract Classes
 */

//creating your own abstract classes
abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

//abstract kelas tidak bisa diinit
class Platypus extends Animal {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }
}

// ignore: slash_for_doc_comments
/**
 * Interfaces
 * - Software architecture (business logic, domain logic, business rules)
 * - Communication Rules
 *    - interfaces itu seperti protocol, artinya aturan komunikasi
 *    - separating business logic from infrastructure
 *        Business Logic => Interface <= Database
 */

abstract class DataRepository {
  double? fetchTemperature(String city);
  factory DataRepository() => FakeWebServer();
}

//repository adalah term interface yang menyembunyikan detail dari bagaimana
//data distore atau diretrieve.

//implementing the interface

class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}

// ignore: slash_for_doc_comments
/**
 * Interfaces and the Dart SDK
 * dart bikin abstract class yang bakalan nyambung ke API nya, agar
 * developer maupun team dart gampang mengubah implementasi detail tanpa
 * mempengaruhi developer.
 */

// ignore: slash_for_doc_comments
/**
 * Extending vs implementing
 * extends vs implements
 * dart hanya mengizinkan extend single superclass (single inheritance),
 * proglang lain bisa multiple-inheritance.
 * 
 * class MySubclass extends OneClass, AnotherClass {} // Not OK
 * class MyClass implements OneClass, AnotherClass {} // OK, bisa multiple interface
 * class MySubclass extends OneClass implements AnotherClass {} //OK
 * 
 * bedanya:
 * extends bisa memberikan akses ke superclass method / property,
 * implements harus menyediakan aturan yang sesuai pada class yang dituju
 */

// ignore: slash_for_doc_comments
/**
 * Mini Exercises
 */

abstract class Bottle {
  void open();
  factory Bottle() => SodaBottle();
}

class SodaBottle implements Bottle {
  @override
  void open() {
    print("Fizz fizz");
  }
}

// ignore: slash_for_doc_comments
/**
 * Mixins
 * kalo di swift kayak protocol extensions
 */

class Platypus2 extends Animal {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }

  void layEggs() {
    print('Plop plop');
  }
}

abstract class Bird {
  void fly();
  void layEggs();
}

class Robin extends Bird {
  @override
  void fly() {
    print('Swoosh swoosh');
  }

  @override
  void layEggs() {
    print('Plop plop');
  }
}

//method layEggs Robin sama kayak class Platypus2, artinya repeat tidak sesuai DRY.
//sehingga menggunakan mixins

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

class Platypus3 extends Animal with EggLayer {
  @override
  void eat() {
    print('Munch munch');
  }

  @override
  void move() {
    print('Glide glide');
  }
}

class Robin2 extends Bird with Flyer, EggLayer {}

void bab9() {
  usingTheClasses();
  siblingClasses();
  final jane = Student('Jane', 'Snow');
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  final students = [jane, jessie, marty]; //type inference mixed list
  //Checking object type in runtime
  print(jessie is Object);
  print(jessie is Person);
  print(jessie is Student);
  print(jessie is SchoolBandMember);
  print(jessie is! StudentAthlete); //is! artinya 'is not'
  //memiliki object dengan multiple forms (bentuk), artinya polymorphism
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);
  //treating concrete classes as abstract
  final Animal platypus2 =
      new Platypus(); //ini berguna jika hanya menggunakan method sesuai di Animal saja.
  //using the interface
  // final repository = DataRepository(); //error karena abstract class can't init
  final DataRepository repository = FakeWebServer();
  final temperature = repository.fetchTemperature(
      'Berlin'); //namun ini malah ga sesuai point business logic, karena belum separate (terpisah)
  //sehingga dibutuhkan factory constructor pada DataRepository
  final repositoryRight = DataRepository(); //aman
  print(repositoryRight.fetchTemperature(''));
  //namun ada cara lain, tanpa factory, yaitu
  //- service locators dengan package get_it (recommended)
  //- dependency injection
  final bottle = Bottle();
  bottle.open();
}
