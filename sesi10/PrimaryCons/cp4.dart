// Superclass menggunakan Primary Constructor satu baris
class TenagaMedis(final String id, final String nama, final int gajiPokok);

// Subclass 1: Dokter Spesialis
class DokterSpesialis(super.id, super.nama, super.gajiPokok, final String spesialisasi, final int pasienDitangani)
    extends TenagaMedis {
  int hitungGaji() => gajiPokok + (pasienDitangani * 100000);

  void info() {
    print('[$id] dr. $nama ($spesialisasi) | Pasien: $pasienDitangani | Total Gaji: Rp ${hitungGaji()}');
  }
}

// Subclass 2: Perawat
class Perawat(super.id, super.nama, super.gajiPokok, final int shiftMalam)
    extends TenagaMedis {
  int hitungGaji() => gajiPokok + (shiftMalam * 75000);

  void info() {
    print('[$id] Ns. $nama | Shift Malam: $shiftMalam | Total Gaji: Rp ${hitungGaji()}');
  }
}

void main() {
  var dokter = DokterSpesialis('MED01', 'Hendra', 8000000, 'Jantung', 25);
  var perawat = Perawat('MED02', 'Dewi', 4000000, 8);

  dokter.info();
  perawat.info();
}
