/// Status kehadiran mahasiswa dalam satu pertemuan.
enum StatusHadir { hadir, izin, sakit, alpa }

/// Persentase kehadiran minimal (dalam persen).
const double batasKehadiran = 75;

/// Data awal mahasiswa.
final List<Map<String, dynamic>> daftarMahasiswa = [
  {'nim': '002', 'nama': 'mery'},
  {'nim': '004', 'nama': 'galuh'},
  {'nim': '005', 'nama': 'adel'},
  {'nim': '006', 'nama': 'nayra'},
];

/// Absensi setiap pertemuan.
///
/// Key luar = nomor pertemuan, key dalam = NIM, value = status kehadiran.
final Map<int, Map<String, StatusHadir>> absensi = {
  1: {
    '002': StatusHadir.hadir,
    '004': StatusHadir.hadir,
    '005': StatusHadir.hadir,
    '006': StatusHadir.alpa,
  },
  2: {
    '002': StatusHadir.hadir,
    '004': StatusHadir.izin,
    '005': StatusHadir.hadir,
    '006': StatusHadir.hadir,
  },
  3: {
    '002': StatusHadir.hadir,
    '004': StatusHadir.hadir,
    '005': StatusHadir.sakit,
    '006': StatusHadir.alpa,
  },
  4: {
    '002': StatusHadir.hadir,
    '004': StatusHadir.hadir,
    '005': StatusHadir.izin,
    '006': StatusHadir.alpa,
  },
};
