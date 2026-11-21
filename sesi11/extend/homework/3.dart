class PencatatAktivitas {
  final List<String> riwayat = [];

  @override
  dynamic noSuchMethod(Invocation invocation) {
    riwayat.add('${invocation.memberName} ${invocation.positionalArguments}');
    return null;
  }
}

void main() {
  dynamic p = PencatatAktivitas();
  p.login('andi');
  p.bukaModul('KRS Online');
  p.logout();

  for (var item in p.riwayat) {
    print(item);
  }
}