class KoneksiDatabase {
  // Property
  final String host;
  final String port;

  // Static cache
  static final Map<String, KoneksiDatabase> _cache = {};

  // Private Generative Constructor
  KoneksiDatabase._internal(this.host, this.port);

  // Factory Constructor
  factory KoneksiDatabase(String host, String port) {
    // Format key cache
    final key = '$host:$port';

    // Menggunakan putIfAbsent untuk caching instance
    return _cache.putIfAbsent(
      key,
      () => KoneksiDatabase._internal(host, port),
    );
  }

  // Method info()
  void info() {
    print('Koneksi aktif -> $host:$port');
  }
}

void main() {
  // Membuat instance koneksi
  var c1 = KoneksiDatabase('localhost', '5432');
  var c2 = KoneksiDatabase('localhost', '5432');
  var c3 = KoneksiDatabase('192.168.1.1', '3306');

  // Memanggil info() pada c1 dan c3
  c1.info();
  c3.info();

  // Membuktikan bahwa c1 dan c2 merujuk ke object yang sama
  print('Apakah c1 dan c2 instance yang sama? ${identical(c1, c2)}');
}