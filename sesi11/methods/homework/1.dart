class ItemBelanja {
  final String nama;
  final int harga;
  int kuantitas;

  ItemBelanja(this.nama, this.harga, this.kuantitas);

  // Method menghitung subtotal
  int hitungSubtotal() => harga * kuantitas;

  // Method menambah kuantitas
  void tambahKuantitas(int n) {
    kuantitas += n;
  }

  // Method mengurangi kuantitas
  void kurangiKuantitas(int n) {
    if (kuantitas >= n) {
      kuantitas -= n;
    }
  }

  // Method menampilkan rincian item
  void info() {
    print('$nama x$kuantitas @ Rp $harga = Rp ${hitungSubtotal()}');
  }
}

void main() {
  var kopi = ItemBelanja('Kopi', 15000, 2);
  var roti = ItemBelanja('Roti', 10000, 3);

  kopi.info();
  roti.info();

  int totalBelanja = kopi.hitungSubtotal() + roti.hitungSubtotal();
  print('Total Belanja: Rp $totalBelanja');
}