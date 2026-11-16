class User {
  String username;
  String email;
  String role;
  bool isActive;

  // Constructor utama dengan named parameters
  User({
    required this.username,
    required this.email,
    this.role = 'member',
    this.isActive = true,
  });

  // Named constructor untuk admin
  User.admin(this.username, this.email)
      : role = 'admin',
        isActive = true;

  // Named constructor untuk guest
  User.guest()
      : username = 'guest',
        email = '-',
        role = 'viewer',
        isActive = true;

  // Method untuk menampilkan profil sesuai format output
  void tampilkanProfil() {
    print('$username | $email | $role | aktif: $isActive');
  }
}

void main() {
  // Membuat 1 member, 1 admin, dan 1 guest
  var member = User(username: 'budi', email: 'budi@mail.com');
  var admin = User.admin('siti', 'siti@kantor.com');
  var guest = User.guest();

  // Menampilkan profil masing-masing user
  member.tampilkanProfil();
  admin.tampilkanProfil();
  guest.tampilkanProfil();
}