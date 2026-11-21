class Uang {
  final int nominal;

  Uang(this.nominal);

  // 1. Operator Penjumlahan (+)
  Uang operator +(Uang lain) => Uang(nominal + lain.nominal);

  // 2. Operator Pengurangan (-)
  Uang operator -(Uang lain) {
    if (nominal < lain.nominal) {
      print('Peringatan: Saldo menjadi minus!');
    }
    return Uang(nominal - lain.nominal);
  }

  // 3. Operator Perkalian (*) dengan skalar int
  Uang operator *(int kelipatan) => Uang(nominal * kelipatan);

  // 4. Operator Perbandingan (>)
  bool operator >(Uang lain) => nominal > lain.nominal;

  // 5. Operator Kesamaan (==) dan hashCode
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Uang && runtimeType == other.runtimeType && nominal == other.nominal);

  @override
  int get hashCode => nominal.hashCode;

  @override
  String toString() => 'Rp $nominal';
}

void main() {
  var ayam = Uang(50000);
  var bebek = Uang(20000);

  print('ayam = $ayam');
  print('bebek = $bebek');
  print('ayam + bebek = ${ayam + bebek}');
  print('ayam - bebek = ${ayam - bebek}');
  print('bebek * 3 = ${bebek * 3}');
  print('Apakah ayam > bebek? ${ayam > bebek}');
  print('Apakah ayam == Uang(50000)? ${ayam == Uang(50000)}');
  print('Apakah ayam != bebek? ${ayam != bebek}');
}
