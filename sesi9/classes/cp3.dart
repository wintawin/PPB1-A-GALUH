class Driver {
  final String idDriver;
  String nama;
  double rating = 5.0;
  int totalTrip = 0;
  String? lokasiTerakhir;

  Driver(this.idDriver, this.nama);

  void selesaikanTrip(double nilai, String lokasi) {
    rating = ((rating * totalTrip) + nilai) / (totalTrip + 1);
    totalTrip++;
    lokasiTerakhir = lokasi;
  }

  void info() {
    print(
      '[$idDriver] $nama | Rating: $rating | Trip: $totalTrip | Lokasi: ${lokasiTerakhir ?? "-"}',
    );
  }
}

void main() {
  var d1 = Driver('DRV01', 'spiderman');
  var d2 = Driver('DRV02', 'dr.octopus');

  d1.selesaikanTrip(5, 'Tunjungan Plaza');
  d1.selesaikanTrip(4, 'Stasiun Gubeng');
  d2.selesaikanTrip(9, 'New york');

  d1.info();
  d2.info();
}
