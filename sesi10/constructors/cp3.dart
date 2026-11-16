class RekeningBank {
  // 1. Private fields
  final String _noRekening;
  final int _saldo;

  // 2. Public fields
  final String namaNasabah;
  final String tipeAkun;

  // 3. In the declaration (nilai awal langsung di deklarasi)
  bool isActive = true;

  // Constructor memadukan parameter named, assert, dan initializer list
  RekeningBank({
    required String noRekening,
    required this.namaNasabah,
    int saldoAwal = 0,
  })  : assert(noRekening.length == 10, 'No rekening wajib 10 digit!'),
        assert(saldoAwal >= 0, 'Saldo awal tidak boleh negatif!'),
        _noRekening = noRekening,
        _saldo = saldoAwal,
        tipeAkun = (saldoAwal >= 10000000) ? 'Prioritas' : 'Reguler';

  void tampilkanInfo() {
    print('[$_noRekening] $namaNasabah | Saldo: Rp $_saldo | Tipe: $tipeAkun | Aktif: $isActive');
  }
}

void main() {
  // Nasabah reguler
  var nasabah1 = RekeningBank(
    noRekening: '1234567890',
    namaNasabah: 'Nayra',
    saldoAwal: 1000,
  );

  // Nasabah prioritas
  var nasabah2 = RekeningBank(
    noRekening: '9876543210',
    namaNasabah: 'Adel',
    saldoAwal: 1500,
  );

  nasabah1.tampilkanInfo();
  nasabah2.tampilkanInfo();
}