void main() {
  List<String> nama = ['william', 'Est', 'Pond', 'Phuwin'];

  nama.add('Wesley');
  nama.remove('Pond');
  nama.sort((a, b) => a.compareTo(b));

  print(nama);
  print('Jumlah: ${nama.length}');
}