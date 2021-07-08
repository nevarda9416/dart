import 'dart:collection';
import 'dart:math';
import 'calculator.dart';
import 'loggerlib.dart';

// Library prefix
import 'webloggerlib.dart' as web;
import 'dart:async';
import 'dart:io';
import 'dart:isolate';

class AmtException implements Exception {
  String errMsg() => 'Amount should be greater than zero';
}

void withdraw_amt(int amt) {
  if (amt <= 0) {
    throw new AmtException();
  }
}
void foo(var message) {
  print('Execution from foo ... the message is: ${message}');
}
void main() {
  // Concurrency
  /**
   * is the execution of several instruction sequences at the same time. It involves performing more than one task simultaneously
   * use isolate as a tool for doing works in parallel
   */
  Isolate.spawn(foo, 'Hello!!');
  Isolate.spawn(foo, 'Greetings!!');
  Isolate.spawn(foo, 'Welcome!!');
  print('Execution from main 1');
  print('Execution from main 2');
  print('Execution from main 3');
  // Async
  File file = new File(Directory.current.path + '\\data\\contact.txt');
  Future<String> f = file.readAsString();
  // return a future, this is async method
  f.then((data) => print(data));
  // once file is read, callback method is invoked
  print("End of main");
  // this get printed first, showing fileReading is non blocking or async
  log("hello from loggerlib");
  web.log("hello from webloggerlib");
  // Creating custom library
  var num1 = 10;
  var num2 = 10;
  var sum = add(num1, num2);
  var mod = modulus(num1, num2);
  var r = random(10);
  print("$num1 + $num2 = $num");
  print("$num1 % $num2 = $mod");
  print("random no $r");
  print("Square root of 36 is: ${sqrt(36)}");
  // Custom exception
  try {
    withdraw_amt(-1);
  } catch (e) {
    AmtException e = new AmtException();
    print(e.errMsg());
  } finally {
    print('Ending requested operation...');
  }
  try {
    test_age(-2);
  } catch (e) {
    print('Age cannot be negative');
  }
  int x = 12;
  int y = 0;
  // Finally block
  try {
    int res = x ~/ y;
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  } finally {
    print('Finally block executed');
  }
  try {
    int res = x ~/ y;
  } catch (e) {
    print(e);
  }
  try {
    int res = x ~/ y;
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }
  Queue numQ = new Queue();
  numQ.addAll([100, 200, 300]);
  Iterator i = numQ.iterator;
  while (i.moveNext()) {
    print(i.current);
  }
  // The toString() method
  int n = 12;
  // Return a string representation of an object
  print(n.toString());
  // The cascade operator (..)
  Student s2 = new Student();
  s2.test_method();
  s2.test_method1();
  new Student()
    ..test_method2()
    ..test_method3();
  // invoke the static method
  // The super keyword
  Child1 c2 = new Child1();
  c2.m1(12);
  Parent c1 = new Parent();
  c1.m1(11);
  // The static keyword
  StaticMem.num = 12;
  // Initialize the static variable
  StaticMem.disp();
  Child1 c = new Child1();
  c.m1(12);
  // Class inheritance
  // Single: Every class can at the most extend from 1 parent class
  var obj = new Circle();
  obj.cal_area();
  // Multiple: A class can inherit from multiple classes. Dart doesn't support multiple inheritance
  var obj1 = new Leaf();
  obj1.str = 'hello';
  print(obj1.str);
  Student s1 = new Student();
  s1.stud_name = 'MARK';
  print(s1.stud_name);
  s1.stud_age = 0;
  print(s1.stud_age);
}

void test_age(int age) {
  if (age < 0) {
    // Throwing an exception
    throw new FormatException();
  }
}

class StaticMem {
  static int num = 0;

  static disp() {
    print("The value of num is ${StaticMem.num}");
  }
}

class Shape {
  void cal_area() {
    print("Calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {}

class Student {
  String name = '';
  int age = 0;

  String get stud_name {
    return name;
  }

  void set stud_name(String name) {
    this.name = name;
  }

  int get stud_age {
    return age;
  }

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  void test_method() {
    print("This is a test method 0");
  }

  void test_method1() {
    print("This is a test method 1");
  }

  void test_method2() {
    print("This is a test method 2");
  }

  void test_method3() {
    print("This is a test method 3");
  }
}

class Root {
  String str = 'dada';
}

class Child extends Root {}

class Leaf extends Child {}

// indirectly inherits from Root by virtue of inheritance
class Parent {
  String msg = "Message variable from the parent class";

  void m1(int a) {
    print("Value of parent ${a}");
  }
}

class Child1 extends Parent {
  @override
  void m1(int b) {
    print("Value of child ${b}");
    super.m1(13);
    print("${super.msg}");
  }
}
