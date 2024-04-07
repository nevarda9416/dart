/**
 * Bài 3: Kiểm Tra và Xử Lý Nullable Variables
 * Yêu cầu: Khai báo một biến String? có thể là null.
 * Viết một hàm kiểm tra xem biến đó có null không. Nếu không null, in ra độ dài của chuỗi. Nếu null, in ra "Chuỗi là null".
 */
import 'dart:io';
checkNullableVariable(String? str) {
  if (str == null) {
    print('Chuỗi là null');
  } else {
    print('Độ dài chuỗi là: ${str.length}');
  }
}
main() {
  try {
    // Khai báo biến String? có thể là null
    String? str;
    str = null;
    checkNullableVariable(str); // Chuỗi là null
    str = 'Dart';
    checkNullableVariable(str); // Độ dài chuỗi là: 4
  } catch (e) {
    print(e.toString());
  }
}
