// Bagian Pertama
abstract class BangunRuang {
  double panjang;
  double lebar;
  double tinggi;

  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double dapatPanjang();
  double dapatLebar();
  double dapatTinggi();
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi) : super(panjang, lebar, tinggi);

  @override
  double dapatPanjang() => panjang;

  @override
  double dapatLebar() => lebar;

  @override
  double dapatTinggi() => tinggi;

  double hitungVolume() => panjang * lebar * tinggi;
}

class Kubus extends BangunRuang {
  Kubus(double sisi) : super(sisi, sisi, sisi);

  @override
  double dapatPanjang() => panjang;

  @override
  double dapatLebar() => lebar;

  @override
  double dapatTinggi() => tinggi;

  double hitungVolume() => panjang * lebar * tinggi;
}

void main() {
  Balok balok = Balok(8, 4, 6);
  Kubus kubus = Kubus(5);

  print("Volume Balok: ${balok.hitungVolume()}");
  print("Volume Kubus: ${kubus.hitungVolume()}");
}
