/*
 * Bài 4: Sử Dụng Safe Call và Null Assertion
 * Yêu cầu: Khởi tạo một biến List<String>? có thể là null và một biến List<String> không thể là null.
 * Sử dụng safe call (?.) để in ra độ dài của list có thể null mà không gây ra lỗi.
 * Sau đó, sử dụng null assertion operator (!) để in ra độ dài và giải thích tại sao cách sử dụng này có thể không an toàn.
 */
import 'dart:io';

main() {
  try {
    List<String>? nullableList;
    List<String> nonNullableList = ['Dart', 'Flutter'];
    if (nullableList != null) {
      print(
          'Độ dài list nullable: ${nullableList.length}'); // In ra null nếu nullableList là null
    }
    print('Độ dài list non-nullable: ${nonNullableList!.length}'); // In ra 2
  } catch (e) {
    print(e.toString());
  }
}
/*
Giải thích:
?. là safe call operator. Nó giúp truy cập thuộc tính của 1 biến nullable mà không gây ra lỗi nếu biến là null
! là null assertation operator. Nó giúp truy cập thuộc tính của 1 biến nullable như thể nó không thể null. Tuy nhiên nếu biến là null nó sẽ gây ra lỗi runtime
Lưu ý:
- Nên sử dụng safe call để truy cập thuộc tính của 1 biến nullable
- Chỉ sử dụng null assertion operator khi bạn chắc chắn biến không null
 */