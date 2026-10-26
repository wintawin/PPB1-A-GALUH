import 'help.dart' deferred as help;
Future<void> main() async {
print("Aplikasi siap digunakan.");

// Library dimuat ketika fitur bantuan dibutuhkan
await help.loadLibrary();
await help.tampilkanBantuan();
}