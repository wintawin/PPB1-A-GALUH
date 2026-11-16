// 1. Enum dengan Primary Constructor (otomatis const)
enum TingkatLayanan(final int tarifDasar, final String estimasi) {
  reguler(10000, '2-3 hari'),
  ekspres(25000, '1 hari'),
  sameDay(40000, 'Hari ini');
}

// 2. Class konstan satu baris
class const TitikKoordinat(final double lat, final double lng);

// 3. Named Primary Constructor
class Pengiriman.dariKota(final String kotaAsal, final String kotaTujuan, final TingkatLayanan layanan) {
  void cetakResi() {
    print('Rute: $kotaAsal → $kotaTujuan | Layanan: ${layanan.name.toUpperCase()} (Rp ${layanan.tarifDasar}, ${layanan.estimasi})');
  }
}

void main() {
  // Buktikan compile-time constant
  const t1 = TitikKoordinat(-1.85, 109.97);
  const t2 = TitikKoordinat(-1.85, 109.97);
  print('Titik identik: ${identical(t1, t2)}');

  // Membuat pengiriman lewat named primary constructor
  var kirim1 = Pengiriman.dariKota('Ketapang', 'Pontianak', TingkatLayanan.ekspres);
  var kirim2 = Pengiriman.dariKota('Ketapang', 'Jakarta', TingkatLayanan.reguler);

  kirim1.cetakResi();
  kirim2.cetakResi();
}
