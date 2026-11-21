class DurasiVideo {
  int _totalDetik;

  DurasiVideo(this._totalDetik);

  // Getter untuk jam, menit, dan detik
  int get jam => _totalDetik ~/ 3600;
  int get menit => (_totalDetik % 3600) ~/ 60;
  int get detik => _totalDetik % 60;

  // Getter format string waktu
  String get format => '$jam jam $menit menit $detik detik';

  // Getter & Setter totalMenit
  int get totalMenit => _totalDetik ~/ 60;

  set totalMenit(int nilai) {
    _totalDetik = nilai * 60;
  }
}

void main() {
  var video = DurasiVideo(3725);
  print(video.format);

  video.totalMenit = 90; // Mengubah total menit menggunakan setter
  print(video.format);
}