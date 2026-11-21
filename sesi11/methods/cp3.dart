class DompetDigital {
  final String pemilik;
  double _saldoRupiah;
  static const double kursUsd = 16000.0; // 1 USD = Rp 16.000

  DompetDigital(this.pemilik, this._saldoRupiah);

  // 1. Getter & Setter Saldo Rupiah dengan validasi
  double get saldoRupiah => _saldoRupiah;
  set saldoRupiah(double nilai) {
    if (nilai < 0) {
      print('Peringatan: Saldo tidak boleh negatif!');
      return;
    }
    _saldoRupiah = nilai;
  }

  // 2. Getter & Setter Saldo USD (Computed Property dua arah)
  double get saldoUsd => _saldoRupiah / kursUsd;
  set saldoUsd(double usd) {
    if (usd < 0) {
      print('Peringatan: Saldo USD tidak boleh negatif!');
      return;
    }
    _saldoRupiah = usd * kursUsd;
  }

  // 3. Getter Status Tingkat Member berdasarkan saldo
  String get tingkatMember {
    if (_saldoRupiah >= 10000000) return 'Platinum';
    if (_saldoRupiah >= 2000000) return 'Gold';
    return 'Silver';
  }

  void info() {
    print('[$pemilik] Saldo: Rp ${_saldoRupiah.toStringAsFixed(0)} | USD: \$${saldoUsd.toStringAsFixed(2)} | Member: $tingkatMember');
  }
}

void main() {
  var dompet = DompetDigital('Andi', 1600000.0);
  dompet.info();

  print('--- Mengisi Saldo via USD: \$200 ---');
  dompet.saldoUsd = 200.0; // Otomatis mengubah _saldoRupiah menjadi 3.200.000
  dompet.info();

  print('--- Mengubah Saldo Rupiah ke Rp 12.000.000 ---');
  dompet.saldoRupiah = 12000000.0; // Otomatis naik status menjadi Platinum
  dompet.info();

  print('--- Validasi Saldo Negatif ---');
  dompet.saldoRupiah = -50000.0; // Ditolak oleh validasi setter
  dompet.info();
}
