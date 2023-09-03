void main() {
  for(var nilai = 1; nilai <= 10; nilai++) {
    String hasilPenilaian = penilaian(nilai);
    print("Nilai $nilai: $hasilPenilaian");
  }
}

String penilaian(int nilai) {
  if(nilai > 70) {
    return "Nilai A";
  } else if(nilai > 40) {
    return "Nilai B";
  } else if(nilai > 0) {
    return "Nilai C";
  } else {
    return " ";
  }
}