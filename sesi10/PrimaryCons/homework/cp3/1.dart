class Durasi {
  // Property
  final int totalMenit;

  // Named Primary Constructor[cite: 7]
  const Durasi.dariMenit(this.totalMenit);

  // Getter jam mengembalikan totalMenit ~/ 60[cite: 7]
  int get jam => totalMenit ~/ 60;

  // Getter sisaMenit mengembalikan totalMenit % 60[cite: 7]
  int get sisaMenit => totalMenit % 60;

  // Method info()[cite: 7]
  void info() {
    print('Durasi tayang: $totalMenit menit ($jam jam $sisaMenit menit)');
  }
}

class ResolusiLayar {
  final int lebar;
  final int tinggi;

  // Class konstan (Constant Constructor)[cite: 7]
  const ResolusiLayar(this.lebar, this.tinggi);
}

void main() {
  // Buat Durasi.dariMenit(145) dan panggil info()[cite: 7]
  var durasi = const Durasi.dariMenit(145);
  durasi.info();

  // Buat dua resolusi konstan ResolusiLayar(1920, 1080) dan buktikan keduanya identik dengan identical()[cite: 7]
  const res1 = ResolusiLayar(1920, 1080);
  const res2 = ResolusiLayar(1920, 1080);

  print('Identik: ${identical(res1, res2)}');
}