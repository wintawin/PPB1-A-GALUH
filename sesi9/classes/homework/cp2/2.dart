class Invoice {
  String nomor;
  String namaKlien;
  double subtotal;
  double pajak;
  double diskon;

  // Constructor utama dengan named parameters (pajak default 11, diskon default 0)[cite: 16]
  Invoice({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 0,
  });

  // Named constructor Invoice.member dengan diskon otomatis 10[cite: 16]
  Invoice.member({
    required this.nomor,
    required this.namaKlien,
    required this.subtotal,
    this.pajak = 11,
    this.diskon = 10,
  });

  // Method hitungTotal() sesuai petunjuk: hitung diskon lebih dulu, lalu pajak dari harga setelah diskon[cite: 16]
  double hitungTotal() {
    double nilaiDiskon = subtotal * (diskon / 100);
    double hargaSetelahDiskon = subtotal - nilaiDiskon;
    double nilaiPajak = hargaSetelahDiskon * (pajak / 100);
    return hargaSetelahDiskon + nilaiPajak;
  }

  // Method cetak() untuk menampilkan rincian invoice beserta totalnya[cite: 16]
  void cetak() {
    print('Nomor Invoice : $nomor');
    print('Nama Klien    : $namaKlien');
    print('Subtotal      : Rp $subtotal');
    print('Diskon        : $diskon%');
    print('Pajak         : $pajak%');
    print('Total Bayar   : Rp ${hitungTotal()}');
    print('-----------------------------------');
  }
}

void main() {
  // Membuat 1 invoice biasa dan 1 invoice member
  var invBiasa = Invoice(
    nomor: 'INV/2026/001',
    namaKlien: 'Andi',
    subtotal: 1000000,
  );

  var invMember = Invoice.member(
    nomor: 'INV/2026/002',
    namaKlien: 'Siti',
    subtotal: 1000000,
  );

  // Menampilkan rincian masing-masing invoice
  invBiasa.cetak();
  invMember.cetak();

  // Membandingkan total keduanya[cite: 16]
  print('Perbandingan Total:');
  print('Total Invoice Biasa : Rp ${invBiasa.hitungTotal()}');
  print('Total Invoice Member: Rp ${invMember.hitungTotal()}');
  
  if (invBiasa.hitungTotal() > invMember.hitungTotal()) {
    print('Hasil: Invoice member lebih murah karena mendapat potongan diskon 10%.');
  }
}