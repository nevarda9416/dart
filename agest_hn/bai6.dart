/*
 * Bài 6: Sử dụng kiểu dữ liệu nullable và non-nullable
 * Yêu cầu: Viết 1 hàm nhận vào 1 String? và trả về độ dài của nó nếu không null, ngược lại trả về -1.
 * Sau đó, viết 1 hàm khác nhận vào 1 String (non-nullable) và trả về độ dài của nó.
 */
int? getLengthNullable(String? str) {
  if (str == null) {
    return -1;
  }
  return str.length;
}
int getLengthNonNullable(String str) {
  return str.length;
}
main() {
  try {
    String? str1 = null;
    String str2 = 'Dart';
    print(getLengthNullable(str1)); // null
    print(getLengthNullable(str2)); // 4
    print(getLengthNonNullable(str2)); // 4
    print(getLengthNonNullable(str1!)); // Lỗi: Biến str1 có thể null
  } catch (e) {
    print(e.toString());
  }
}
