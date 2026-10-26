enum Hari { senin, rabu, selasa, kamis, jumat }

void main() {
  print(Hari.values); 
  print(Hari.values.length); 
  print(Hari.values[2]); 
  print(Hari.values[2].name); 
  
  for (var hari in Hari.values) {
    print(hari.name);
  }
}