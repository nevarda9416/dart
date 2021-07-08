class TestClass {
  void disp() {
    print("Hello World");
  }
}
void main() {
  TestClass c = new TestClass();
  c.disp();
  // The dynamic keyword: variables declared without a static type are implicitly declared as dynamic
  dynamic x = "Tom";
  print(x);
  // Final and Const
  // Dart prevents modifying the values of a variable declared using the final or const keyword
  final val1 = 12;
  print(val1);
  const pi = 3.14;
  const area = pi * 12 * 12;
  print("The output is ${area}");
  /**
   * Conditional Expression 1: condition ? expr1: expr2
   */
  var a = 10;
  var res =
      a > 12 ? 'Value greater than 10' : 'Value lesser than or equal to 10';
  print(res);
  var a1 = null;
  var b = 12;
  /**
   * Conditional Expression 2: expr1 ?? expr2
   * if expr1 is non-null, returns its value, otherwise, evaluates and returns the value of expr2
   */
  var res1 = a1 ?? b;
  print(res1);
  outerloop: // this is the label name
  for (var i = 0; i < 5; i++) {
    print("Innerloop: ${i}");
    innerloop:
    for (var j = 0; j < 5; j++) {
      if (j == 3) {
        continue outerloop;
      }
      if (j > 3) break;
      // quit the innermost loop
      if (i == 2) break innerloop;
      // do the same thing
      if (i == 4) break outerloop;
      // quit the outer loop
      print("Inner loop: ${j}");
    }
  }
  // Number
  // declare an integer
  int num1 = 10;
  // declare a double value
  double num2 = 10.50;
  print(num1);
  print(num2);
  // Parsing
  print(num.parse('12'));
  print(num.parse('10.91'));
  // String
  String str1 = 'this is a single line string';
  String str2 = "this is a single line string";
  String str3 = '''this is a multiline line string''';
  String str4 = """this is a multiline line string""";
  print(str1);
  print(str2);
  print(str3);
  print(str4);
  // String interpolation
  String str5 = "hello";
  String str6 = " world";
  String res2 = str5 + str6;
  print("The concatenated string: ${res2}");
  // Boolean
  bool test;
  test = 12 < 5;
  print(test);
  // List
  var num_list = [1, 2, 3];
  print(num_list);
  // Map Literal: the map object is a simple key/value pair
  var details = {'Usrname': 'tom', 'Password': 'pass@123'};
  print(details);
  // Adding value to map literal at runtime
  details['Uid'] = 'U1oo1';
  print(details);
  // Map constructor
  var detail = new Map();
  detail['Usrname'] = 'admin';
  detail['Password'] = 'admin@123';
  print(detail);
}
