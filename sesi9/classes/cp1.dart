class Karyawan {
  String nama;
  String jabatan;
  double gaji;

  Karyawan(this.nama, this.jabatan, this.gaji);

  void tampilkanInfo() {
    print('Nama : $nama');
    print('Jabatan: $jabatan');
    print('Gaji : Rp $gaji');
  }

  void naikGaji(double persen) {
    gaji = gaji + (gaji * persen / 100);
    print('$nama naik gaji $persen%, gaji baru: Rp $gaji');
  }
}

void main() {
  var k1 = Karyawan('Bernard', 'Backend Developer', 8000000);
  var k2 = Karyawan('sari', 'UI/UX Designer', 7500000);

  k1.tampilkanInfo();
  k1.naikGaji(10);
  print('---');
  k2.tampilkanInfo();
  k2.naikGaji(50);
}