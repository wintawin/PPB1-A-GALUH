class Mahasiswa {
  final String nim;
  final String nama;

  // Constructor standar
  const Mahasiswa(this.nim, this.nama);

  String get sapaan => 'Halo, Mahasiswa $nama (NIM: $nim)';
}

void cetakInfo(String teks) => print(teks);

void main() {
  var mhs = Mahasiswa('3202416001', 'Rina Marlina');
  cetakInfo(mhs.sapaan);
}