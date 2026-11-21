class Rapor {
  final String nama;
  final Map<String, int> _nilai = {};

  Rapor(this.nama);

  // Operator [] untuk membaca nilai matkul
  int? operator [](String matkul) => _nilai[matkul];

  // Operator []= untuk mengisi nilai matkul dengan validasi 0-100
  void operator []=(String matkul, int nilai) {
    if (nilai >= 0 && nilai <= 100) {
      _nilai[matkul] = nilai;
    } else {
      print('Nilai $matkul tidak valid!');
    }
  }

  // Getter untuk menghitung rata-rata nilai
  double get rataRata {
    if (_nilai.isEmpty) return 0.0;
    int total = _nilai.values.fold(0, (a, b) => a + b);
    return total / _nilai.length;
  }
}

void main() {
  var raporBudi = Rapor('Budi');
  
  raporBudi['PPB 1'] = 88;
  raporBudi['Basis Data'] = 76;
  raporBudi['Pancasila'] = 120; // Di luar rentang valid

  print('PPB 1: ${raporBudi['PPB 1']}');
  print('Pancasila: ${raporBudi['Pancasila']}');
  print('Rata-rata: ${raporBudi.rataRata}');
}