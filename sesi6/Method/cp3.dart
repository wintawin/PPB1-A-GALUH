void main() {
  String nama = '          spiderman';
  String rapi = nama.trim();
  
  print('[$nama]');
  print('[$rapi]');
  print(rapi.toUpperCase());
  print('GOBLIN'.toLowerCase());
  print(rapi.contains('pratama')); 
  print(''.isEmpty); 
  print(rapi.isNotEmpty); 
}