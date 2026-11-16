class RekeningSyariah {
  // Property
  final String pemilik;
  int _saldo; // Diubah menjadi int agar sesuai standar tipe data
  final String akad;

  // Constructor yang diperbaiki (menggunakan parameter saldoAwal)
  RekeningSyariah(this.pemilik, {required int saldoAwal, this.akad = 'Wadiah'})
      : _saldo = saldoAwal,
        assert(saldoAwal >= 100000, 'Setoran awal minimal Rp 100.000!') {
    print('Akun Syariah ($akad) atas nama $pemilik dibuka.');
  }

  // Method tarik(int jumlah)
  void tarik(int jumlah) {
    // Sisa saldo setelah penarikan minimal harus 50000
    if (_saldo - jumlah >= 50000) {
      _saldo -= jumlah;
      print('$pemilik tarik Rp $jumlah. Saldo: Rp $_saldo');
    } else {
      print('Penarikan ditolak! Saldo mengendap minimal Rp 50.000');
    }
  }

  // Method info()
  void info() {
    print('[$pemilik] Akad: $akad | Saldo: Rp $_saldo');
  }
}

void main() {
  // Membuat akun atas nama 'Aisyah' dengan saldo awal 200000
  var rekening = RekeningSyariah('Aisyah', saldoAwal: 200000);

  // Uji penarikan pertama 100000
  rekening.tarik(100000);

  // Uji penarikan kedua 80000 (ditolak karena sisa saldo < 50000)
  rekening.tarik(80000);

  // Menampilkan info akhir
  rekening.info();
}