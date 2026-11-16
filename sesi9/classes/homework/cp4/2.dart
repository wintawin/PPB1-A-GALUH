// class ApiCuaca {
//   double ambilSuhu(String kota) {
//     print('Menghubungi server cuaca...');
//     return 0;
//   }
// }

// // Membuat MockApiCuaca implements ApiCuaca
// class MockApiCuaca implements ApiCuaca {
//   @override
//   double ambilSuhu(String kota) {
//     if (kota.toLowerCase() == 'surabaya') {
//       return 33.5;
//     } else if (kota.toLowerCase() == 'malang') {
//       return 24.0;
//     } else {
//       return 28.0;
//     }
//   }
// }

// // Fungsi tampilkanCuaca
// void tampilkanCuaca(ApiCuaca api, String kota) {
//   double suhu = api.ambilSuhu(kota);
//   print('Suhu di $kota adalah $suhu°C');
// }

// void main() {
//   var mockApi = MockApiCuaca();

//   // Menguji fungsi dengan MockApiCuaca untuk 3 kota
//   tampilkanCuaca(mockApi, 'Surabaya');
//   tampilkanCuaca(mockApi, 'Malang');
//   tampilkanCuaca(mockApi, 'Jakarta'); // Kota lain
// }

// Class/Interface Pengemudi
class Pengemudi {
  void antar() {}
}

// Class/Interface Karyawan
class Karyawan {
  late String idKaryawan;
}

// Class Kurir mengimplementasikan dua class sekaligus
class Kurir implements Pengemudi, Karyawan {
  @override
  String idKaryawan;

  // Constructor untuk mengisi idKaryawan
  Kurir(this.idKaryawan);

  @override
  void antar() {
    print('Kurir dengan ID $idKaryawan sedang mengantar paket.');
  }
}

void main() {
  var kurir = Kurir('EMP-001');
  kurir.antar();
}