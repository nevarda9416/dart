/*
 * Bài 5: Sử Dụng late Keyword
 * Yêu cầu: Tạo một class UserProfile với một thuộc tính String userName không thể null, nhưng bạn muốn khởi tạo sau (ví dụ, trong một hàm initialize() nào đó).
 * Sử dụng late để trì hoãn việc khởi tạo và đảm bảo rằng nó không gây ra lỗi khi truy cập sau khi được khởi tạo đúng cách.
 */
import 'dart:io';
class UserProfile {
  late final String userName;
  void initialize(String name) {
    userName = name;
  }
  String getUserName() {
    return userName;
  }
}
checkNullableVariable(String? str) {
  if (str == null) {
    print('Chuỗi là null');
  } else {
    print('Độ dài chuỗi là: ${str.length}');
  }
}
main() {
  try {
    var userProfile = UserProfile();
    // Lỗi: userName chưa được khởi tạo
    // print(userProfile.getUserName());
    userProfile.initialize('Bard');
    print(userProfile.getUserName());
  } catch (e) {
    print(e.toString());
  }
}