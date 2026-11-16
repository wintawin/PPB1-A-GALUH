class Penyimpanan {
  String lokasi = '';
  void simpan(String data) {}
  void hapus(String data) {}
}

// Class LocalStorage mengimplementasikan Penyimpanan
class LocalStorage implements Penyimpanan {
  @override
  String lokasi = 'Memori HP';

  @override
  void simpan(String data) {
    print('Menyimpan "$data" ke $lokasi');
  }

  @override
  void hapus(String data) {
    print('Menghapus "$data" dari $lokasi');
  }
}

// Class CloudStorage mengimplementasikan Penyimpanan
class CloudStorage implements Penyimpanan {
  @override
  String lokasi = 'Server Cloud';

  @override
  void simpan(String data) {
    print('Menyimpan "$data" ke $lokasi');
  }

  @override
  void hapus(String data) {
    print('Menghapus "$data" dari $lokasi');
  }
}

// Fungsi backup yang menerima tipe kontrak Penyimpanan[cite: 15]
void backup(Penyimpanan p, String data) {
  p.simpan(data);
}

void main() {
  // Membuat objek dari kedua jenis penyimpanan
  var local = LocalStorage();
  var cloud = CloudStorage();

  // Menjalankan fungsi backup dengan kedua jenis penyimpanan
  backup(local, 'Catatan Rapat');
  backup(cloud, 'Catatan Rapat');
}