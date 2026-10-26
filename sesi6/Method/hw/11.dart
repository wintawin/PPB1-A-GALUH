enum StatusHadir { hadir, izin, sakit, alpa }

void main() {
  for (var i = 0; i < StatusHadir.values.length; i++) {
    print('${i + 1}. ${StatusHadir.values[i].name}');
  }
}