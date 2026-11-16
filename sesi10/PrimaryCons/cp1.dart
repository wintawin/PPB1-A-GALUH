// class Pengguna {
//   final String username;
//   String status;
//   final int panjangSandi;

//   Pengguna(this.username, String sandiAwal, [this.status = 'Aktif'])
//     : panjangSandi = sandiAwal.length;

//   // sandiAwal BUKAN field, hanya dipakai untuk menghitung properti lain

//   void info() {
//     print('User: $username | Sandi ($panjangSandi digit) | Status: $status');
//   }
// }


class Pengguna(final String username, String sandiAwal, [var String status = 'Aktif']) {
  // sandiAwal BUKAN field, hanya dipakai untuk menghitung properti lain
  final int panjangSandi = sandiAwal.length;

  void info() {
    print('User: $username | Sandi ($panjangSandi digit) | Status: $status');
  }
}

void main() {
  var user1 = Pengguna('budi_santoso', 'rahasia123');
  var user2 = Pengguna('siti_aminah', 'pass2026', 'Non-Aktif');

  user1.info();
  user2.info();

  // Mengubah status (karena dideklarasikan dengan 'var')
  user1.status = 'Suspended';
  print('Status baru ${user1.username}: ${user1.status}');

  // user1.username = 'budi_baru'; // ERROR: username bertipe final
  // print(user1.sandiAwal);       // ERROR: sandiAwal bukan field object
}
