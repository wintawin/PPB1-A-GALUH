void main() {
  Map<String, int> stok = {
    'semyut': 50,
    'kumbwang': 30,
    'kecoa': 25
  };
  
  print(stok.keys); 
  print(stok.values); 
  print(stok.containsKey('gajyah')); 
  
  stok.remove('kumbwang');
  print(stok); 
  
  int total = 0;
  for (var jumlah in stok.values) {
    total += jumlah;
  }
  print('Total stok: $total'); 
}