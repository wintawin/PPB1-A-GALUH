class Rekening {
  final String nomorRekening;
  final String pemilik;
  int saldo;

  Rekening(this.nomorRekening, this.pemilik, this.saldo);

  // 1. Method menambah saldo
  void setor(int jumlah) {
    saldo += jumlah;
    print('$pemilik setor Rp $jumlah | Saldo: Rp $saldo');
  }

  // 2. Method menarik saldo dengan kembalian boolean
  bool tarik(int jumlah) {
    if (jumlah <= saldo) {
      saldo -= jumlah;
      print('$pemilik tarik Rp $jumlah | Sisa saldo: Rp $saldo');
      return true;
    } else {
      print('$pemilik gagal tarik Rp $jumlah (Saldo tidak mencukupi!)');
      return false;
    }
  }

  // 3. Method interaksi antar objek (transfer)
  void transfer(Rekening tujuan, int jumlah) {
    print('--- Transfer Rp $jumlah dari $pemilik ke ${tujuan.pemilik} ---');
    if (tarik(jumlah)) {
      tujuan.setor(jumlah);
      print('Transfer berhasil!');
    } else {
      print('Transfer dibatalkan.');
    }
  }

  void info() {
    print('[$nomorRekening] $pemilik | Saldo: Rp $saldo');
  }
}

void main() {
  var rek1 = Rekening('111-222', 'Goblin', 500000);
  var rek2 = Rekening('333-444', 'Kitty', 200000);

  rek1.info();
  rek2.info();

  rek1.setor(100000);
  rek1.tarik(700000); // Gagal: Saldo tidak cukup

  // Transfer antar-objek
  rek1.transfer(rek2, 250000);

  print('--- Status Akhir ---');
  rek1.info();
  rek2.info();
}
