void main() {
  List<Map<String, dynamic>> mahasiswa = [
    {
      'nama': 'Any',
      'nilai': 80
    },
    {
      'nama': 'Polcasan',
      'nilai': 95
    },
    {
      'nama': 'Lunar',
      'nilai': 70
    },
  ];

  mahasiswa.sort((a, b) => (b['nilai'] as int).compareTo(a['nilai'] as int));

  for (var mhs in mahasiswa) {
    print('${mhs['nama']}: ${mhs['nilai']}');
  }
}