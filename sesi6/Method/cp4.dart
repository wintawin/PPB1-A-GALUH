void main() {
  List<String> krs = ['jtl', 'pbb'];
  
  krs.add('tidur');
  print(krs); 
  
  krs.remove('jtl');
  print(krs); 
  
  print(krs.contains('pbb')); 
  
  krs.clear();
  print(krs); 
  print(krs.isEmpty); 
}