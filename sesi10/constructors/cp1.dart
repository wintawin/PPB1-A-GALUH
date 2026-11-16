class Tiket {
  final String judul;
  final String studio;
  final int harga;

  // 1. Generative constructor (sekaligus constant constructor)
  const Tiket(this.judul, this.studio, this.harga);

  // 2. Named constructor khusus tiket VIP
  Tiket.vip(this.judul, this.studio) : harga = 100000;

  // 3. Redirecting constructor untuk promo (meneruskan ke constructor utama)
  Tiket.promo(String judul, String studio) : this(judul, studio, 35000);

  // 4. Factory constructor yang memilih tipe tiket berdasarkan kategori
  factory Tiket.buat(String judul, String kategori) {
    if (kategori == 'VIP') {
      return Tiket.vip(judul, 'Premiere');
    } else if (kategori == 'Promo') {
      return Tiket.promo(judul, 'Studio 2');
    }
    return Tiket(judul, 'Studio 1', 50000);
  }

  void tampilkan() {
    print('[$studio] $judul - Rp $harga');
  }
}

void main() {
  // Membuat tiket lewat generative constructor
  var t1 = Tiket(' Spider-Man: Homecoming', 'Studio 1', 50000);
  var t2 = Tiket.vip(' Spider-Man: Far from Home', 'Premiere');
  var t3 = Tiket.promo(' Spider-Man: No Way Home', 'Studio 2');
  var t4 = Tiket.buat('Agak Laen', 'VIP');

  t1.tampilkan();
  t2.tampilkan();
  t3.tampilkan();
  t4.tampilkan();

  print('---');

  // 5. Constructor Tear-off: mengoper Tiket.vip ke fungsi .map()
  var judulFilmList = ['Batman', 'Spider-Man: Brand New Day'];
  var daftarVip = judulFilmList.map((judul) => Tiket.vip(judul, 'Premiere')).toList();
  for (var tiket in daftarVip) {
    tiket.tampilkan();
  }
}