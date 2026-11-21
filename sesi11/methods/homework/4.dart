// Abstract Superclass
abstract class Karyawan {
  final String nama;

  Karyawan(this.nama);

  // Abstract getter & method yang wajib diimplementasikan subclass
  String get jabatan;
  int hitungGaji();

  // Concrete method
  void cetakSlip() {
    print('$jabatan $nama: Rp ${hitungGaji()}');
  }
}

// Subclass Dosen
class Dosen extends Karyawan {
  final int jumlahSks;

  Dosen(String nama, this.jumlahSks) : super(nama);

  @override
  String get jabatan => 'Dosen';

  @override
  int hitungGaji() => 3000000 + (jumlahSks * 150000);
}

// Subclass Staf
class Staf extends Karyawan {
  final int uangLembur;

  Staf(String nama, this.uangLembur) : super(nama);

  @override
  String get jabatan => 'Staf';

  @override
  int hitungGaji() => 2500000 + uangLembur;
}

void main() {
  List<Karyawan> daftarKaryawan = [
    Dosen('Dr. Hendra', 12),
    Staf('Dewi Lestari', 500000),
  ];

  for (var karyawan in daftarKaryawan) {
    karyawan.cetakSlip();
  }
}