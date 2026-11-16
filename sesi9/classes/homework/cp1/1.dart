class Produk {
  String kode;
  String nama;
  double harga;
  int stok;

  Produk(this.kode, this.nama, this.harga, this.stok);

  void tambahStok(int jumlah) {
    stok += jumlah;
    print('Stok ditambah $jumlah, stok sekarang: $stok');
  }

  void kurangiStok(int jumlah) {
    if (stok < jumlah) {
      print('Stok tidak mencukupi!');
    } else {
      stok -= jumlah;
      print('Stok dikurangi $jumlah, sisa stok: $stok');
    }
  }

  void tampilkanInfo() {
    print('[$kode] $nama - Rp ${harga.toInt()} | Stok: $stok');
  }
}

void main() {
  // Membuat minimal 2 produk
  var p1 = Produk('P001', 'Laptop Asus', 9500000, 5);
  var p2 = Produk('P002', 'Mouse Wireless', 150000, 10);

  // Menguji ketiga method pada produk pertama
  p1.tampilkanInfo();
  p1.tambahStok(3);
  p1.kurangiStok(10); // Menguji kondisi jika stok tidak mencukupi

  print('---');
  
  // Menguji produk kedua
  p2.tampilkanInfo();
  p2.kurangiStok(12);
}