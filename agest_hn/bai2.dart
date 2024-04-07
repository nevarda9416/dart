/**
 * Bài 2: Ứng dụng tính tuổi
 * Xây dựng một ứng dụng console tính toán tuổi của một người dựa trên ngày sinh nhập vào.
 * Yêu cầu:
 * Người dùng nhập ngày, tháng, năm sinh. năm sinh phải lớn hơn >= 1980 và bé hơn <=2000, ngày phải từ 1 tới 31, tháng từ 1 tới 12, kiểm tra nếu chưa tới ngày sinh nhật thì trừ đi 1 tuổi. Hiển thị tuổi hiện tại của người đó.
 */
import 'dart:io';

void main() {
  try {
    // Nhập ngày, tháng, năm sinh
    print('Nhập ngày sinh: ');
    int ngaySinh = int.parse(stdin.readLineSync()!);
    print('Nhập tháng sinh: ');
    int thangSinh = int.parse(stdin.readLineSync()!);
    print('Nhập năm sinh: ');
    int namSinh = int.parse(stdin.readLineSync()!);
    // Kiểm tra ngày tháng năm sinh hợp lệ
    if (namSinh < 1980 || namSinh > 2000) {
      print('Lỗi: năm sinh không hợp lệ');
      return;
    }
    if (thangSinh < 1 || thangSinh > 12) {
      print('Lỗi: tháng sinh không hợp lệ');
      return;
    }
    if (ngaySinh < 1 || ngaySinh > 31) {
      print('Lỗi: ngày sinh không hợp lệ');
      return;
    }
    // Tính toán tuổi hiện tại
    int tuoi = DateTime.now().year - namSinh;
    // Kiểm tra nếu chưa tới ngày sinh nhật thì trừ đi 1 tuổi
    DateTime ngaySinhHienTai = DateTime(namSinh, thangSinh, ngaySinh);
    if (ngaySinhHienTai.isAfter(DateTime.now())); {
      tuoi--;
    }
    // Hiển thị kết quả
    print('\nTuổi hiện tại của bạn là: $tuoi');
  } catch (e) {
    print(e.toString());
  }
}