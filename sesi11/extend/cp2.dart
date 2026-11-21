// Superclass: Layanan Pengiriman Ekspedisi Dasar
class LayananPengiriman {
  int _perkilogram = 1000;

  int get beratGram => _perkilogram;

  // Setter dengan parameter int
  set beratGram(int nilai) {
    _perkilogram = nilai;
  }

  // Method mengembalikan num
  num hitungTarif() => _perkilogram * 12.5;

  // Method menerima Object umum
  void prosesTujuan(Object alamat) {
    print('Memproses tujuan umum: $alamat');
  }
}

// Subclass: Pengiriman Ekspres
class PengirimanEkspres extends LayananPengiriman {
  // 1. Memperluas tipe parameter setter dari int menjadi num (menerima int & double)
  @override
  set beratGram(num nilai) {
    super.beratGram = nilai.round();
  }

  // 2. Mempersempit tipe kembalian method dari num menjadi int
  @override
  int hitungTarif() => (beratGram * 15.0).toInt();

  // 3. Mempersempit tipe parameter dari Object menjadi String dengan covariant
  @override
  void prosesTujuan(covariant String alamatLengkap) {
    print('Ekspres mengirim langsung ke alamat: "$alamatLengkap"');
  }
}

void main() {
  var ekspres = PengirimanEkspres();

  // 1. Uji setter yang diperluas (menerima pecahan desimal num)
  ekspres.beratGram = 1250.75;
  print('Berat Paket : ${ekspres.beratGram} gram');
  print('Total Tarif : Rp ${ekspres.hitungTarif()}');

  // 2. Uji method dengan covariant (parameter String yang valid)
  ekspres.prosesTujuan('Jl. Pangeran Hidayat');

  print('--- Pengujian Error Covariant Runtime ---');
  // 3. Uji pemanggilan polimorfik salah tipe pada covariant
  try {
    LayananPengiriman layanan = ekspres;
    layanan.prosesTujuan(987654); // Tipe int bukan String -> memicu error runtime
  } catch (e) {
    print('Error covariant tertangkap: ${e.runtimeType} (Tipe data bukan String)');
  }
}
