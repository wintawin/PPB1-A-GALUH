import 'dart:io';
void main() {
stdout.write('Nama: ');
String? input = stdin.readLineSync();
String nama = (input ?? '').trim();

print('Halo, $nama!');
}