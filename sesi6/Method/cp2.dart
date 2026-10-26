void main() {
  String teksNilai = '90';
  String teksIpk = '3.50';
  
  int nilai = int.parse(teksNilai);
  double ipk = double.parse(teksIpk);
  
  print(nilai + 5); 
  print(ipk); 
  print('${nilai.toString()} poin'); 
  
  double rataRata = 256 / 3;
  print(rataRata); 
  print(rataRata.toStringAsFixed(2)); 
}