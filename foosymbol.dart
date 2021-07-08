import 'dart:core';
import 'dart:mirrors';
import 'foo.dart';

enum Status { none, running, stopped, paused }

// Declaring a class
class Car {
  // field
  String engine = "E1001";

  // Dart Constructor
  Car(String engine) {
    print(engine);
  }

  // function
  void disp() {
    print(engine);
  }
}

main() {
  Car c1 = new Car('E1002');
  // Accessing an attribute
  print(c1.engine);
  // Accessing a function
  c1.disp();
  // Implementing an interface
  Printer cp = new Printer();
  cp.print_data();
  // Implementing multiple interfaces
  Calculator c = new Calculator();
  print("The gross total: ${c.ret_tot()}");
  print("Discount: ${c.ret_dis()}");
  // Recursive dart function
  print(factorial(6));
  // Lambda function
  /**
   * are a concise mechanism to represent functions. These function are also called as Arrow functions
   */
  printMg();
  print(test());
  Symbol lib = new Symbol('foo_lib');
  String name_of_lib = MirrorSystem.getName(lib);
  print(lib);
  print(name_of_lib);
  // library name stored as Symbol
  Symbol clsToSearch = new Symbol('Foo');
  // class name stored as Symbol
  if (checkIf_classAvailableInlibrary(lib, clsToSearch))
    // searches Foo class in foo_lib library
    print("class found...");
  reflect_InstanceMethods(lib, clsToSearch);
  print(Status.values);
  Status.values.forEach((v) => print('value: $v, index: ${v.index}'));
  print('running: ${Status.running}, ${Status.running.index}');
  print('running index: ${Status.values[1]}');
}

bool checkIf_classAvailableInlibrary(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);
  if (libMirror != null) {
    print("Found Library");
    print("checkng... class details..");
    print("No of classes found is: ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s, d) => print(s));
    if (libMirror.declarations.containsKey(className)) return true;
  }
  return false;
}

void reflect_InstanceMethods(Symbol libraryName, Symbol className) {
  MirrorSystem mirrorSystem = currentMirrorSystem();
  LibraryMirror libMirror = mirrorSystem.findLibrary(libraryName);
  if (libMirror != null) {
    print("Found Library");
    print("checkng... class details..");
    print("No of classes found is: ${libMirror.declarations.length}");
    libMirror.declarations.forEach((s, d) => print(s));
    if (libMirror.declarations.containsKey(className)) print("found class");
  }
}

factorial(number) {
  if (number <= 0) {
    // termination case
    return 1;
  } else {
    return (number * factorial(number - 1));
    // function invokes itself
  }
}

class Printer {
  void print_data() {
    print("____________Printing Data____________");
  }
}

class ConsolePrinter implements Printer {
  void print_data() {
    print("____________Printing to Console____________");
  }
}

class Calculate_Total {
  int ret_tot() {
    return 1;
  }
}

class Calculate_Discount {
  int ret_dis() {
    return 1;
  }
}

class Calculator implements Calculate_Total, Calculate_Discount {
  int ret_tot() {
    return 1000;
  }

  int ret_dis() {
    return 50;
  }
}

printMg() => print('hello');

int test() => 123; // returning function
