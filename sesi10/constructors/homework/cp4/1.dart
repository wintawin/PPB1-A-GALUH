// Superclass Kendaraan
class Kendaraan {
  final String platNomor;
  final String merek;
  final int tahun;

  // Constructor utama
  Kendaraan(this.platNomor, this.merek, this.tahun);

  // Method info() untuk menampilkan informasi dasar kendaraan
  void info() {
    print('[$platNomor] $merek ($tahun)');
  }
}

// Subclass TrukPengangkut extends Kendaraan
class TrukPengangkut extends Kendaraan {
  final double kapasitasTon;

  // Constructor menggunakan super parameter
  TrukPengangkut(super.platNomor, super.merek, super.tahun, this.kapasitasTon);

  // Override method info()
  @override
  void info() {
    print('[$platNomor] $merek ($tahun) - Truk Kapasitas: $kapasitasTon Ton');
  }
}

// Subclass MotorKurir extends Kendaraan
class MotorKurir extends Kendaraan {
  final bool boxTambahan;

  // Constructor menggunakan super parameter
  MotorKurir(super.platNomor, super.merek, super.tahun, this.boxTambahan);

  // Override method info()
  @override
  void info() {
    String statusBox = boxTambahan ? 'Ada' : 'Tidak Ada';
    print('[$platNomor] $merek ($tahun) - Motor Box: $statusBox');
  }
}

void main() {
  // Membuat 1 objek TrukPengangkut dan 1 objek MotorKurir
  Kendaraan truk = TrukPengangkut('KB 1234 AB', 'Hino Dutro', 2022, 5.5);
  Kendaraan motor = MotorKurir('KB 5678 CD', 'Honda Beat', 2023, false);

  // Panggil info() masing-masing objek
  truk.info();
  motor.info();
}