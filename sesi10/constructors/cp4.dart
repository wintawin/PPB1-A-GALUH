class Pegawai {
  final String nip;
  final String nama;
  final int gajiPokok;

  // Constructor Superclass
  Pegawai(this.nip, this.nama, this.gajiPokok) {
    print('  [Init Superclass] Pegawai: $nama ($nip)');
  }

  int hitungTotalGaji() => gajiPokok;

  void info() {
    print('  → [$nip] $nama | Gaji Bersih: Rp ${hitungTotalGaji()}');
  }
}

class Dosen extends Pegawai {
  final int jumlahSks;

  // Menggunakan super parameters (super.nip, super.nama, super.gajiPokok)
  Dosen(super.nip, super.nama, super.gajiPokok, this.jumlahSks) {
    print('  [Init Subclass] Dosen: $nama mengajar $jumlahSks SKS');
  }

  @override
  int hitungTotalGaji() => gajiPokok + (jumlahSks * 50000);
}

class Staf extends Pegawai {
  final int uangLembur;

  // Menggunakan super parameters
  Staf(super.nip, super.nama, super.gajiPokok, this.uangLembur) {
    print('  [Init Subclass] Staf: $nama');
  }

  @override
  int hitungTotalGaji() => gajiPokok + uangLembur;
}

void main() {
  print('1. Membuat Object Dosen:');
  var dosen = Dosen('198501', 'Widi Arrohman', 6000000, 6);
  dosen.info();

  print('\n2. Membuat Object Staf:');
  var staf = Staf('199002', 'Dr.Strange', 3500000, 500000);
  staf.info();
}
