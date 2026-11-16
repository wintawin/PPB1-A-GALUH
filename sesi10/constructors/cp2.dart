class TitikLokasi {
  final double latitude;
  final double longitude;
  final String namaTempat;

  // Static constant untuk titik patokan utama
  static const kantorPusat = TitikLokasi(-1.8500, 109.9700, 'Kantor Utama');

  // 1. Concise constructor utama (const new)
  const new(this.latitude, this.longitude, [this.namaTempat = 'Gudang Pusat']);

  // 2. Concise named constructor untuk titik origin
  const new origin()
      : latitude = 0.0,
        longitude = 0.0,
        namaTempat = 'Titik Nol';

  // 3. Concise named constructor untuk cabang baru
  new cabang(this.latitude, this.longitude, this.namaTempat);

  void tampilkan() {
    print('$namaTempat: ($latitude, $longitude)');
  }
}

void main() {
  // Memakai const constructor
  var lokasiA = const TitikLokasi(-1.8500, 109.9700, 'Kantor Utama');

  // Memakai named constructor origin
  var lokasiB = TitikLokasi.origin();

  // Memakai named constructor cabang
  var lokasiC = TitikLokasi.cabang(-1.8200, 109.9500, 'Cabang Delta');

  lokasiA.tampilkan();
  lokasiB.tampilkan();
  lokasiC.tampilkan();

}
