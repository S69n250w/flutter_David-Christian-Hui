// K = Keliling
// L = Luas
// p = persegi
// pp = persegi panjang
// ling = lingkaran

void persegiDanPersegiPanjang() {
  print("Soal 1:");
  int s = 2;
  int p = 5;
  int l = 6;

  var Kp = menghitungKelilingP(s);
  var Lp = menghitungLuasP(s);
  var Kpp = menghitungKelilingPP(p, l);
  var Lpp = menghitungLuasPP(p, l);

  print("Kp = $Kp");
  print("Lp = $Lp");
  print("Kpp = $Kpp");
  print("Lpp = $Lpp");
}

int menghitungKelilingP(int s) {
  return 4*s;
}

int menghitungLuasP(s) {
  return s*s;
}

int menghitungKelilingPP(int p, int l) {
  return 2*(p+l);
}

int menghitungLuasPP(p, l) {
  return p*l;
}

void lingkaran() {
  print("\nSoal 2:");
  double d = 3;
  double r = 8;

  var Kling = menghitungKelilingLing(d);
  var Lling = menghitungLuasLing(r);

  print("Kling = $Kling");
  print("Lling = $Lling");
}

double menghitungKelilingLing(d) {
  return 3.14 * d;
}

double menghitungLuasLing(r) {
  return 3.14 * r * r;
}

void main() {
  persegiDanPersegiPanjang();
  lingkaran();
}