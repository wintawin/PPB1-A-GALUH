void main() {
  String kodeInput = '  ti201  ';
  String kode = kodeInput.trim().toUpperCase();

  print('Kode: $kode');
  print('Kosong: ${kode.isEmpty}');
  print('Prodi TI: ${kode.contains('TI')}');
}