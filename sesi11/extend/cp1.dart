// Superclass: Akun Pelanggan Umum
class Pelanggan {
  final String id;
  final String nama;
  int totalBelanja = 0;

  Pelanggan(this.id, this.nama);

  void bayar(int jumlah) {
    totalBelanja += jumlah;
    print('[$nama] Membayar belanja: Rp $jumlah');
  }

  void info() {
    print('ID: $id | $nama | Total Belanja: Rp $totalBelanja');
  }
}

// Subclass 1: Pelanggan Member (Mendapatkan Poin Reward)
class PelangganMember extends Pelanggan {
  int poinReward = 0;

  PelangganMember(super.id, super.nama);

  @override
  void bayar(int jumlah) {
    super.bayar(jumlah); // Menjalankan pencatatan pembayaran dari superclass
    int poinDidapat = jumlah ~/ 10000; // Tiap kelipatan Rp 10.000 dapat 1 poin
    poinReward += poinDidapat;
    print('[$nama] Mendapatkan $poinDidapat poin reward! (Total Poin: $poinReward)');
  }
}

// Subclass 2: Pelanggan VIP (Diskon Khusus Otomatis)
class PelangganVIP extends Pelanggan {
  final double diskonPersen;

  PelangganVIP(super.id, super.nama, [this.diskonPersen = 10.0]);

  @override
  void bayar(int jumlah) {
    int potongan = (jumlah * diskonPersen ~/ 100);
    int tagihanAkhir = jumlah - potongan;
    print('[$nama] Diskon VIP ${diskonPersen.toInt()}%: -Rp $potongan');
    super.bayar(tagihanAkhir); // Membayar tagihan bersih ke superclass
  }
}

void main() {
  var member = PelangganMember('MBR-01', 'Rina Marlina');
  var vip = PelangganVIP('VIP-01', 'Hendra Wijaya', 15.0);

  member.bayar(50000);
  member.info();

  print('---');

  vip.bayar(200000);
  vip.info();
}
