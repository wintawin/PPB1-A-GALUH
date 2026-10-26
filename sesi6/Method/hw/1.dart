import 'dart:io';
void main() {
  stdout.write('NIM: ');
  String nim = (stdin.readLineSync() ?? '').trim();
  stdout.write('Nama: ');
  String nama = (stdin.readLineSync() ?? '').trim();
  print('Mahasiswa $nim - $nama terdaftar.');
}
