import 'dart:math';

void sambungVariabel() {
  print("Soal 1:");
  String kata1 = "Halo";
  String kata2 = "nama saya";
  String kata3 = "David C";

  String hasilSambung = kata1 + ' ' + kata2 + ' ' + kata3;

  print("Hasil Sambung: $hasilSambung");
}

void tabung() {
  print("\nSoal 2:");
  double r = 9;
  double t = 10;

  var Vt = menghitungVolumeT(r, t);

  print("Volume Tabung = $Vt");
}

double menghitungVolumeT(r, t) {
  return 3.14 * pow(r, 2) * t;
}

void main() {
  sambungVariabel();
  tabung();
}