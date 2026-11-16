class KalkulatorGaji {
  // Static variable
  static const double persenPajak = 5;

  //Instain variable
  String namaHRD = 'Bernard';

  // Static method untuk menghitung nilai pajak dari gaji kotor
  static double hitungPajak(double gajiKotor) {
    return gajiKotor * (persenPajak / 100);
  }

  // Static method untuk menghitung gaji bersih: (gaji pokok + tunjangan) - pajak[cite: 16]
  static double gajiBersih(double gajiPokok, double tunjangan) {
    double gajiKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(gajiKotor);
    return gajiKotor - pajak;
  }

  // Static method untuk mencetak slip gaji lengkap[cite: 16]
  static void slip(String nama, double gajiPokok, double tunjangan) {
    double gajiKotor = gajiPokok + tunjangan;
    double pajak = hitungPajak(gajiKotor);
    double bersih = gajiBersih(gajiPokok, tunjangan);
    // print(namaHRD);

    print('=== SLIP GAJI: $nama ===');
    print('Gaji Pokok : $gajiPokok');
    print('Tunjangan  : $tunjangan');
    print('Pajak (5%) : $pajak');
    print('Gaji Bersih: $bersih');
    print('');
  }
}

void main() {
  // Mencetak slip gaji untuk 3 karyawan tanpa membuat object KalkulatorGaji[cite: 16]
  // (Menggunakan langsung nama class karena semua member bersifat static)
  KalkulatorGaji.slip('Budi', 8000000.0, 1000000.0);
  KalkulatorGaji.slip('Siti', 7500000.0, 1200000.0);
  KalkulatorGaji.slip('Andi', 6000000.0, 800000.0);
}
