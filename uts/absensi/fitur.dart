import 'data.dart';
import 'input.dart';

// ============================================================
// Fungsi bantu
// ============================================================

/// Mencari mahasiswa berdasarkan NIM. Mengembalikan null jika tidak ada.
Map<String, dynamic>? cariByNim(String nim) {
  for (final mhs in daftarMahasiswa) {
    if (mhs['nim'] == nim) return mhs;
  }
  return null;
}

/// Mencetak satu baris data mahasiswa.
void cetakMahasiswa(Map<String, dynamic> mhs) {
  print('${mhs['nim']} | ${mhs['nama']}');
}

/// Meminta pengguna memilih status kehadiran.
StatusHadir bacaStatus(String label) {
  final pilihan = bacaInt(
    '$label (1=hadir, 2=izin, 3=sakit, 4=alpa)',
    min: 1,
    max: 4,
  );
  return switch (pilihan) {
    1 => StatusHadir.hadir,
    2 => StatusHadir.izin,
    3 => StatusHadir.sakit,
    _ => StatusHadir.alpa,
  };
}

// ============================================================
// Fitur yang sudah jadi
// ============================================================

/// Menu 1: menampilkan semua mahasiswa.
void tampilkanDaftar() {
  print('\n=== Daftar Mahasiswa ===');
  if (daftarMahasiswa.isEmpty) {
    print('Belum ada data mahasiswa.');
    return;
  }
  for (final mhs in daftarMahasiswa) {
    cetakMahasiswa(mhs);
  }
}

/// Menu 2: mencatat absensi untuk pertemuan berikutnya.
void catatAbsensi() {
  final nomor = absensi.length + 1;
  print('\n=== Catat Absensi Pertemuan $nomor ===');
  final Map<String, StatusHadir> data = {};
  for (final mhs in daftarMahasiswa) {
    data[mhs['nim'] as String] = bacaStatus('Status ${mhs['nama']}');
  }
  absensi[nomor] = data;
  print('Absensi pertemuan $nomor tersimpan.');
}

/// Menu 3: menampilkan absensi pada satu pertemuan.
void tampilkanAbsensiPertemuan() {
  print('\n=== Absensi per Pertemuan ===');
  if (absensi.isEmpty) {
    print('Belum ada absensi.');
    return;
  }
  final nomor = bacaInt('Nomor pertemuan', min: 1, max: absensi.length);
  final data = absensi[nomor]!;
  print('Pertemuan $nomor:');
  for (final mhs in daftarMahasiswa) {
    final status = data[mhs['nim']];
    print('${mhs['nim']} | ${mhs['nama']} | ${status?.name ?? '-'}');
  }
}

// ============================================================
// Fitur pilihan (pilih minimal 3, lihat README.md)
// ============================================================

/// Menu 4 [Mudah]: menambah mahasiswa baru.
void tambahMahasiswa() {
  print('\n=== Tambah Mahasiswa ===');
  final nim = bacaTeks('NIM');

  // Tolak jika NIM sudah terdaftar (pakai cariByNim).
  if (cariByNim(nim) != null) {
    print('Mahasiswa dengan NIM $nim sudah terdaftar.');
    return;
  }

  final nama = bacaTeks('Nama');

  // Tambahkan ke daftarMahasiswa.
  daftarMahasiswa.add({'nim': nim, 'nama': nama});
  print('Mahasiswa $nama berhasil ditambahkan.');

}

/// Menu 5 [Mudah]: mencari mahasiswa berdasarkan sebagian nama.
void cariMahasiswa() {
  print('\n=== Cari Mahasiswa ===');
  final kataKunci = bacaTeks('Nama');

  bool ditemukan = false;
  for (final mhs in daftarMahasiswa) {
    final nama = mhs['nama'] as String;
    // Huruf besar/kecil tidak dibedakan (case-insensitive)
    if (nama.toLowerCase().contains(kataKunci.toLowerCase())) {
      cetakMahasiswa(mhs);
      ditemukan = true;
    }
  }
  if (!ditemukan) {
    print('Tidak ada mahasiswa yang ditemukan.');
  }
}

/// Menu 6 [Sedang]: mengubah status absensi seorang mahasiswa.
void ubahStatus() {
  print('\n=== Ubah Status Absensi ===');
  
  if (absensi.isEmpty) {
    print('Belum ada data absensi.');
    return;
  }

  final nomor = bacaInt('Nomor pertemuan', min: 1, max: absensi.length);
  final nim = bacaTeks('NIM');

  // Validasi apakah mahasiswa terdaftar
  final mhs = cariByNim(nim);
  if (mhs == null) {
    print('Mahasiswa dengan NIM $nim tidak ditemukan.');
    return;
  }

  // Minta status baru pakai fungsi bacaStatus yang sudah disediakan
  final statusBaru = bacaStatus('Status baru');

  // Simpan status baru ke absensi[nomor].
  // Pastikan map untuk pertemuan tersebut ada
  if (!absensi.containsKey(nomor)) {
    absensi[nomor] = {};
  }
  absensi[nomor]![nim] = statusBaru;

  print('Status ${mhs['nama']} pada pertemuan $nomor diubah menjadi ${statusBaru.name}.');
}

/// Menu 7 [Sedang]: menampilkan jumlah setiap status per mahasiswa.
void tampilkanRekap() {
  print('\n=== Rekap Kehadiran Mahasiswa ===');
  
  // Validasi jika data absensi masih kosong
  if (absensi.isEmpty) {
    print('Belum ada data absensi.');
    return;
  }

  // Perulangan untuk setiap mahasiswa
  for (final mhs in daftarMahasiswa) {
    final nim = mhs['nim'] as String;
    final nama = mhs['nama'] as String;

    int hadir = 0;
    int izin = 0;
    int sakit = 0;
    int alpa = 0;

    // Perulangan untuk memeriksa absensi di setiap pertemuan
    absensi.forEach((nomorPertemuan, dataAbsen) {
      final status = dataAbsen[nim];
      if (status == StatusHadir.hadir) {
        hadir++;
      } else if (status == StatusHadir.izin) {
        izin++;
      } else if (status == StatusHadir.sakit) {
        sakit++;
      } else if (status == StatusHadir.alpa) {
        alpa++;
      }
    });

    // Cetak hasil rekap total per mahasiswa
    print('$nim | $nama -> Hadir: $hadir, Izin: $izin, Sakit: $sakit, Alpa: $alpa');
  }
}

/// Menu 8 [Sulit]: menampilkan persentase kehadiran setiap mahasiswa.
void tampilkanPersentase() {
  print('\n=== Persentase Kehadiran Mahasiswa ===');
  
  // Validasi jika data absensi masih kosong
  if (absensi.isEmpty) {
    print('Belum ada data absensi.');
    return;
  }

  // Total pertemuan adalah jumlah key di dalam Map absensi
  int totalPertemuan = absensi.length;
  print('Total pertemuan yang sudah dicatat: $totalPertemuan\n');

  // Perulangan untuk setiap mahasiswa
  for (final mhs in daftarMahasiswa) {
    final nim = mhs['nim'] as String;
    final nama = mhs['nama'] as String;

    int jumlahHadir = 0;

    // Hitung berapa kali mahasiswa ini hadir dari semua pertemuan
    absensi.forEach((nomorPertemuan, dataAbsen) {
      final status = dataAbsen[nim];
      if (status == StatusHadir.hadir) {
        jumlahHadir++;
      }
    });

    // Hitung persentase: (jumlah hadir / total pertemuan) * 100
    // Gunakan double agar hasil pembagian akurat (bisa ada koma)
    double persentase = (jumlahHadir / totalPertemuan) * 100;

    // Cetak hasil persentase dengan 1 angka di belakang koma (.toStringAsFixed(1))
    print('$nim | $nama -> Hadir: $jumlahHadir/$totalPertemuan (${persentase.toStringAsFixed(1)}%)');
  }
}

/// Menu 9 [Sulit]: menampilkan mahasiswa dengan kehadiran di bawah batas.
void tampilkanDiBawahBatas() {
  print('\n=== Mahasiswa di Bawah Batas Hadir ===');
  
  // Validasi jika data absensi masih kosong
  if (absensi.isEmpty) {
    print('Belum ada data absensi.');
    return;
  }

  int totalPertemuan = absensi.length;
  print('Total pertemuan saat ini: $totalPertemuan');

  // Meminta batas minimum persentase kehadiran dari pengguna menggunakan bacaInt
  int batasMinimum = bacaInt('Masukkan batas minimum persentase kehadiran (%)', min: 0, max: 100);

  print('\nDaftar mahasiswa dengan kehadiran di bawah $batasMinimum%:');
  bool ada = false;

  // Perulangan untuk setiap mahasiswa
  for (final mhs in daftarMahasiswa) {
    final nim = mhs['nim'] as String;
    final nama = mhs['nama'] as String;

    int jumlahHadir = 0;

    // Hitung total kehadiran mahasiswa di semua pertemuan
    absensi.forEach((nomorPertemuan, dataAbsen) {
      final status = dataAbsen[nim];
      if (status == StatusHadir.hadir) {
        jumlahHadir++;
      }
    });

    // Hitung persentase kehadiran
    double persentase = (jumlahHadir / totalPertemuan) * 100;

    // Filter: Jika persentase di bawah batas minimum, tampilkan ke terminal
    if (persentase < batasMinimum) {
      print('$nim | $nama -> Hadir: $jumlahHadir/$totalPertemuan (${persentase.toStringAsFixed(1)}%)');
      ada = true;
    }
  }

  // Jika tidak ada mahasiswa yang di bawah batas
  if (!ada) {
    print('Tidak ada mahasiswa yang berada di bawah batas kehadiran tersebut.');
  }
}
