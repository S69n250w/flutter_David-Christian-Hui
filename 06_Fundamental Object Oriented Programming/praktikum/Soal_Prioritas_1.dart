class Hewan {
  double berat = 0;
  String nama = " ";

  Hewan(this.nama, this.berat);
}

class Mobil {
  double beratMax = 100.00;
  List<Hewan> muatan = [];

  void tambahMuatan(Hewan hewan) {
    if(totalBeratMuatan() + hewan.berat <= beratMax) {
      muatan.add(hewan);
    } else {
      print("Mobil sudah melebihi muatan maksimum!");
    }
  }

  double totalBeratMuatan() {
    double total = 0.0;
    for(var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }

  void tampilkanMuatan() {
    for(var hewan in muatan) {
      print("Hewan: ${hewan.nama}, Berat: ${hewan.berat} kg");
    }
  }
}

void main() {
  var totalMuatan = Mobil();

  Hewan kucing = Hewan("Kucing", 5);
  Hewan anjing = Hewan("Anjing", 10);
  Hewan ayam = Hewan("Ayam", 2.45);

  totalMuatan.tambahMuatan(kucing);
  totalMuatan.tambahMuatan(anjing);
  totalMuatan.tambahMuatan(ayam);

  totalMuatan.tampilkanMuatan();
}