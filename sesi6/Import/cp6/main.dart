import 'heavy_report.dart' deferred as heavy;

Future<void> main() async {
  print("Dashboard POS siap.");

  // Saat butuh laporan bulanan, library dimuat di sini
  await heavy.loadLibrary();
  heavy.loadMonthlyReport();
}

