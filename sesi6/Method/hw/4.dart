void main() {
  List<String> daftarNama = [
    'Nayra', 'Aul', 'Mery', 'Tata', 'Adel', 'Galuh'
  ];
  String kataKunci = 'G';

  for (var nama in daftarNama) {
    if (nama.toLowerCase().contains(kataKunci.toLowerCase())) {
      print(nama);
    }
  }
}