enum JenisKontrak { harian, bulanan, tahunan }

void main() {
  var kontrak = JenisKontrak.bulanan;
  print("Jenis kontrak karyawan: ${kontrak.name}");
}
