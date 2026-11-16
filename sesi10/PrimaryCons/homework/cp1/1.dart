class Produk {
  // Property sesuai spesifikasi
  final String kode;
  String nama;
  int stok;
  final int harga;

  // Constructor
  Produk(this.kode, this.nama, this.stok, this.harga);

  // Method tambahStok(int jumlah)
  void tambahStok(int jumlah) {
    stok += jumlah;
    print('Stok $nama bertambah $jumlah, sekarang: $stok');
  }

  // Method jual(int jumlah)
  void jual(int jumlah) {
    if (stok >= jumlah) {
      stok -= jumlah;
      print('Terjual $jumlah unit $nama. Sisa stok: $stok');
    } else {
      print('Stok $nama tidak mencukupi!');
    }
  }

  // Method tampilkanInfo()
  void tampilkanInfo() {
    print('[$kode] $nama | Harga: Rp $harga | Stok: $stok unit');
  }
}

void main() {
  // Membuat 1 produk ('PRD01', 'Buku Tulis', stok 20, harga 5000)[cite: 5]
  var produk = Produk('PRD01', 'Buku Tulis', 20, 5000);

  // Menguji penambahan stok dan penjualan produk[cite: 5]
  produk.tampilkanInfo();
  produk.tambahStok(10);
  produk.jual(25);
  produk.jual(10); // Menguji kondisi ketika stok tidak mencukupi
}

