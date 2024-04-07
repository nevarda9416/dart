import 'dart:io';

enum PhepToan { cong, tru, nhan, chia, du }

main() {
  try {
    // Nhập 2 số từ người dùng
    print('Nhập số thứ nhất: ');
    double soThuNhat = double.parse(stdin.readLineSync()!);
    print('Nhập số thứ hai: ');
    double soThuHai = double.parse(stdin.readLineSync()!);
    // Hiển thị menu lựa chọn phép toán
    print('\nChọn phép toán:');
    print('0, Cộng');
    print('1, Trừ');
    print('2, Nhân');
    print('3, Chia');
    print('4, Lấy phần dư');
    // Nhập lựa chọn của người dùng
    print('Lựa chọn của bạn: ');
    int luaChon = int.parse(stdin.readLineSync()!);
    // Lấy phép toán tương ứng với lựa chọn
    PhepToan phepToan = PhepToan.values[luaChon];
    // Thực hiện phép toán và hiển thị kết quả
    double ketQua;
    switch (phepToan) {
      case PhepToan.cong:
        ketQua = soThuNhat + soThuHai;
        break;
      case PhepToan.tru:
        ketQua = soThuNhat - soThuHai;
        break;
      case PhepToan.nhan:
        ketQua = soThuNhat * soThuHai;
        break;
      case PhepToan.chia:
        ketQua = soThuNhat / soThuHai;
        break;
      case PhepToan.du:
        ketQua = soThuNhat % soThuHai;
        break;
    }
    // Hiển thị kết quả
    print("\nKết quả: ");
    print(
        '$soThuNhat ${phepToan.toString().split('.').last} $soThuHai = $ketQua');
  } catch (e) {
    print(e.toString());
  }
}
