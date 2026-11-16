class ApiClient {
  // Property
  final String baseUrl;
  final int timeoutDetik;
  final bool useHttps;

  // Concise Constructor utama (menggunakan parameter opsional bernama dengan nilai default)
  ApiClient(this.baseUrl, {this.timeoutDetik = 30, this.useHttps = true});

  // Concise Named Constructor (Development) menggunakan initializer list
  ApiClient.dev(String host)
      : baseUrl = host,
        timeoutDetik = 5,
        useHttps = false;

  // Method cetakStatus() untuk menampilkan konfigurasi
  void cetakStatus() {
    print('Base URL: $baseUrl | Timeout: ${timeoutDetik}s | HTTPS: $useHttps');
  }
}

void main() {
  // Membuat 1 konfigurasi production dan 1 konfigurasi development
  var prodClient = ApiClient('api.kampus.ac.id');
  var devClient = ApiClient.dev('localhost:8080');

  // Memanggil cetakStatus() pada masing-masing objek
  prodClient.cetakStatus();
  devClient.cetakStatus();
}