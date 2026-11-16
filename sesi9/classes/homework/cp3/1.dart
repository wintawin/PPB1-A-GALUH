class Rekening {
  final String nomorRekening; 
  String namaPemilik;         
  double saldo;               
  String? transaksiTerakhir;  // nullable (String?)

  // Constructor
  Rekening(this.nomorRekening, this.namaPemilik, {this.saldo = 0.0, this.transaksiTerakhir});

  // Method setor(double jumlah)[cite: 17]
  void setor(double jumlah) {
    saldo += jumlah;
    transaksiTerakhir = 'Setor $jumlah';
  }

  // Method tarik(double jumlah)[cite: 17]
  void tarik(double jumlah) {
    if (saldo < jumlah) {
      print('Saldo tidak cukup!');
    } else {
      saldo -= jumlah;
      transaksiTerakhir = 'Tarik $jumlah';
    }
  }

  // Method cekSaldo() untuk menampilkan semua data[cite: 17]
  void cekSaldo() {
    String infoTerakhir = transaksiTerakhir ?? '-';
    print('$nomorRekening | $namaPemilik | Saldo: $saldo | Terakhir: $infoTerakhir');
  }
}

void main() {
  // Membuat 2 rekening
  var rek1 = Rekening('1234567', 'octopus');
  var rek2 = Rekening('7654321', 'goblin');

  // Melakukan transaksi hanya pada salah satu rekening (rek1)
  rek1.setor(500000.0);

  // Membuktikan rekening lain (rek2) tidak ikut berubah
  rek1.cekSaldo();
  rek2.cekSaldo();
}