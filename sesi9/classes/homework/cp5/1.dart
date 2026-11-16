class Antrean {
  // Static variable
  static const String loket = 'CS';
  static int nomorTerakhir = 0;
  static int kuotaHarian = 3;

  // Instance variable
  final String namaPengunjung;
  late final String nomorAntrean;

  // Constructor untuk setiap objek baru
  Antrean(this.namaPengunjung) {
    if (kuotaHarian <= 0) {
      print('Kuota hari ini sudah penuh!');
      nomorAntrean = '-';
    } else {
      nomorTerakhir++;
      kuotaHarian--;
      // Format nomor antrean otomatis (contoh: CS-001)
      nomorAntrean = '$loket-${nomorTerakhir.toString().padLeft(3, '0')}';
    }
  }
}

void main() {
  // Membuat 7 pengunjung 
  var pengunjung1 = Antrean('Budi');
  var pengunjung2 = Antrean('Siti');
  var pengunjung3 = Antrean('Joko');
  var pengunjung4 = Antrean('Ani');
  var pengunjung5 = Antrean('Roni');
  var pengunjung6 = Antrean('Dewi');
  var pengunjung7 = Antrean('Bambang');

  print('\n--- Informasi Beberapa Pengunjung ---');
  print('${pengunjung1.namaPengunjung} mendapat nomor: ${pengunjung1.nomorAntrean}');
  print('${pengunjung2.namaPengunjung} mendapat nomor: ${pengunjung2.nomorAntrean}');
  print('${pengunjung3.namaPengunjung} mendapat nomor: ${pengunjung3.nomorAntrean}');
  print('${pengunjung4.namaPengunjung} mendapat nomor: ${pengunjung4.nomorAntrean}');
  print('${pengunjung4.namaPengunjung} mendapat nomor: ${pengunjung5.nomorAntrean}');
  print('${pengunjung6.namaPengunjung} mendapat nomor: ${pengunjung6.nomorAntrean}');
  print('${pengunjung7.namaPengunjung} mendapat nomor: ${pengunjung7.nomorAntrean}');

  // Menampilkan sisa kuota harian
  print('Sisa kuota hari ini: ${Antrean.kuotaHarian}');

  // ==========================================
  // ===JAWABAN TANTANGAN & UJI COBA ERROR ===
  // ==========================================
  // print(pengunjung1.nomorTerakhir); 
}