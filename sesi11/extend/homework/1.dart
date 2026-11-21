class RekeningBank {
  final String nomor;
  int saldo;

  RekeningBank(this.nomor, this.saldo);

  void setor(int jumlah) {
    saldo += jumlah;
  }

  bool tarik(int jumlah) {
    if (saldo >= jumlah) {
      saldo -= jumlah;
      return true;
    }
    return false;
  }
}

class TabunganBerbunga extends RekeningBank {
  final int biayaAdmin = 2500;

  TabunganBerbunga(super.nomor, super.saldo);

  void tambahBunga(double persen) {
    int bunga = saldo * persen ~/ 100;
    setor(bunga);
    print('Bunga $persen% (Rp $bunga) ditambahkan. Saldo: Rp $saldo');
  }

  @override
  bool tarik(int jumlah) {
    int total = jumlah + biayaAdmin;
    if (super.tarik(total)) {
      print('Tarik Rp $jumlah + Admin Rp $biayaAdmin berhasil. Sisa saldo: Rp $saldo');
      return true;
    } else {
      print('Saldo tidak mencukupi untuk penarikan!');
      return false;
    }
  }
}

void main() {
  var rekening = TabunganBerbunga('123-456', 500000);
  rekening.tambahBunga(5.0);
  rekening.tarik(100000);
}