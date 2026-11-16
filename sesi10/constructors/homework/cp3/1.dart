class AkunFintech {
  // Property[cite: 3]
  final String _nik;
  final String namaLengkap;
  final int _pin;
  final String statusVerifikasi;

  // Constructor dengan named parameters dan initializer list[cite: 3]
  AkunFintech({
    required String nik,
    required this.namaLengkap,
    required int pin,
    int saldoAwal = 0,
  })  : assert(nik.length == 16, 'NIK harus 16 digit!'),
        assert(pin >= 100000 && pin <= 999999, 'PIN harus 6 digit!'),
        _nik = nik,
        _pin = pin,
        statusVerifikasi = saldoAwal > 0 ? 'Terverifikasi' : 'Pending';

  // Method infoAkun()[cite: 3]
  void infoAkun() {
    // Mengambil 6 digit pertama dari _nik lalu digabung dengan ******
    String nikMasked = '${_nik.substring(0, 6)}******';
    print('NIK: $nikMasked | $namaLengkap | Status: $statusVerifikasi');
  }
}

void main() {
  // Membuat 1 akun dengan saldo awal 100000 dan 1 akun tanpa saldo awal (0)[cite: 3]
  var akun1 = AkunFintech(
    nik: '1234567890123456',
    namaLengkap: 'Budi Santoso',
    pin: 123456,
    saldoAwal: 100000,
  );

  var akun2 = AkunFintech(
    nik: '6543210987654321',
    namaLengkap: 'Rina Wijaya',
    pin: 654321,
    saldoAwal: 0,
  );

  // Memanggil infoAkun()[cite: 3]
  akun1.infoAkun();
  akun2.infoAkun();
}