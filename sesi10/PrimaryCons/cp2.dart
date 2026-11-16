// class DompetDigital {
//   final String pemilik;
//   int _saldo;
//   DompetDigital(this.pemilik, {required this._saldo})
//     : // Initializer list dan Constructor Body
//       assert(_saldo >= 0, 'Saldo awal tidak boleh negatif!') {
//     print('  [Log Init] Dompet digital $pemilik berhasil dibuat.');
//   }

//   void setor(int jumlah) {
//     _saldo += jumlah;
//     print('$pemilik setor Rp $jumlah. Saldo: Rp $_saldo');
//   }

//   void bayar(int jumlah) {
//     if (_saldo >= jumlah) {
//       _saldo -= jumlah;
//       print('$pemilik bayar Rp $jumlah. Saldo: Rp $_saldo');
//     } else {
//       print('$pemilik gagal bayar Rp $jumlah (Saldo tidak mencukupi!)');
//     }
//   }

//   void infoSaldo() {
//     print('[$pemilik] Saldo: Rp $_saldo');
//   }
// }

class DompetDigital(final String pemilik, {required var int _saldo}) {
  // Initializer list dan Constructor Body
  this : assert(_saldo >= 0, 'Saldo awal tidak boleh negatif!') {
    print('  [Log Init] Dompet digital $pemilik berhasil dibuat.');
  }

  void setor(int jumlah) {
    _saldo += jumlah;
    print('$pemilik setor Rp $jumlah. Saldo: Rp $_saldo');
  }

  void bayar(int jumlah) {
    if (_saldo >= jumlah) {
      _saldo -= jumlah;
      print('$pemilik bayar Rp $jumlah. Saldo: Rp $_saldo');
    } else {
      print('$pemilik gagal bayar Rp $jumlah (Saldo tidak mencukupi!)');
    }
  }

  void infoSaldo() {
    print('[$pemilik] Saldo: Rp $_saldo');
  }
}

void main() {
  // Pemanggil menggunakan nama public 'saldo:' untuk mengisi '_saldo'
  var dompet1 = DompetDigital('Andi', saldo: 500000);

  dompet1.setor(150000);
  dompet1.bayar(200000);
  dompet1.bayar(600000);
  dompet1.infoSaldo();
}
