class Dokumen {
  void simpan(Object berkas) => print('Menyimpan dokumen: $berkas');
}

class DokumenTeks extends Dokumen {
  @override
  void simpan(covariant String berkas) {
    print('Menyimpan teks (${berkas.length} karakter): $berkas');
  }
}

void main() {
  Dokumen doc = DokumenTeks();
  doc.simpan('Laporan Praktikum PPB 1');

  try {
    doc.simpan(999);
  } catch (e) {
    print('Gagal simpan: tipe data bukan teks');
  }
}