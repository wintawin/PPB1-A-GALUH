void main() {
  Map<String, int> sks = {
    'IF201': 4,
    'IF202': 3,
    'IF205': 2
  };

  sks.remove('IF202');
  print(sks.containsKey('IF201'));

  int total = 0;
  for (var nilai in sks.values) {
    total += nilai;
  }
  print('Total SKS: $total');
}
