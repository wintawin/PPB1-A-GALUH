class SesiLogin {
  final String userId;       //
  late String token;         //
  bool isOnline = false;     //
  String? waktuLogout;       //

  // Constructor
  SesiLogin(this.userId);

  // Method login()[cite: 17]
  void login() {
    token = 'TKN-$userId';
    isOnline = true;
  }

  // Method logout(String waktu)[cite: 17]
  void logout(String waktu) {
    isOnline = false;
    waktuLogout = waktu;
  }

  // Method status() untuk menampilkan semua data[cite: 17]
  void status() {
    print('UserId: $userId | Token: $token | Online: $isOnline | Waktu Logout: ${waktuLogout ?? '-'}');
  }
}

// void main() {
//   // === PENGUJIAN ERROR LATE INITIALIZATION ===
//   var sesi = SesiLogin('U001');
  
//   // Sengaja mencetak token sebelum method login() dipanggil
//   // Baris ini akan memicu error LateInitializationError
//   print(sesi.token); 

//   // (Kode di bawah ini tidak akan dieksekusi karena program sudah berhenti di error atas)
//   sesi.login();
//   sesi.status();
// }

void main() {
  // Membuat 2 sesi: satu login lalu logout, satu hanya login
  
  // Sesi 1: Login lalu logout
  var sesi1 = SesiLogin('U001');
  sesi1.login();
  sesi1.status();
  sesi1.logout('10:15 WIB');
  sesi1.status();

  print('--------------------------------------------------');

  // Sesi 2: Hanya login
  var sesi2 = SesiLogin('U002');
  sesi2.login();
  sesi2.status();
}
