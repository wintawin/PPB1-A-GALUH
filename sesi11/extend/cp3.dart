// 1. Interface Layanan API
abstract class ApiService {
  String ambilData(String endpoint);
  void kirimData(String endpoint, Map<String, dynamic> body);
}

// 2. Mock Class yang memanfaatkan noSuchMethod untuk testing
class MockApiService implements ApiService {
  final List<String> logPanggilan = [];

  @override
  dynamic noSuchMethod(Invocation invocation) {
    // Mencatat seluruh method call yang masuk
    final namaMember = invocation.memberName.toString();
    final args = invocation.positionalArguments;
    logPanggilan.add('$namaMember $args');

    // Memberikan respon tiruan berdasarkan method yang dipanggil
    if (invocation.memberName == #ambilData) {
      return '{"status": 200, "data": "Mock Data OK"}';
    }
    return null;
  }
}

// 3. Class Robot fleksibel dengan tipe dynamic
class RobotAsisten {
  @override
  dynamic noSuchMethod(Invocation invocation) {
    print('Robot: Perintah ${invocation.memberName} dengan argumen ${invocation.positionalArguments} diterima dan dicatat.');
    return null;
  }
}

void main() {
  // Pengujian Mock Service API
  ApiService api = MockApiService();
  var hasil = api.ambilData('/mahasiswa/ti');
  api.kirimData('/mahasiswa/tambah', {'nama': 'Budi'});

  print('Hasil Mock API: $hasil');
  print('Log Panggilan:');
  for (var log in (api as MockApiService).logPanggilan) {
    print('  - $log');
  }

  print('---');

  // Pengujian Objek Dinamis
  dynamic robot = RobotAsisten();
  robot.terbang();
  robot.sapuLantai(15);
}
