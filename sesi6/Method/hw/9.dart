void main() {
  Set<String> hadir = {'semut', 'Kumbang'};

  hadir.add('bebek');
  hadir.add('lebah');
  print(hadir);

  hadir.remove('semut');
  print(hadir);

  print(hadir.contains('semut'));
  print(hadir.length);
}