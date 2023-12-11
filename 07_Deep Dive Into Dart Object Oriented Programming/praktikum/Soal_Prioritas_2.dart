int findLcm(int a, int b) {
  if (a == 0 || b == 0) {
    return 0;
  } else {
    return (a * b) ~/ findGcd(a, b);
  }
}

int findGcd(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

 // Buat objek AddOperation dan inisialisasi nilai _x dan _y
AddOperation addOperation = AddOperation(5, 3);

class Operation {
  double hasil() {
    return 0;
  }
}

class AddOperation extends Operation {
  int _x;
  int _y;

  AddOperation(this._x, this._y);

  @override
  double hasil() {
    return _x + _y.toDouble();
  }
}


void main() {
  int x = 20;
  int y = 45;

  // Mencari dan mencetak Kelipatan Persekutuan Terkecil (KPK)
  int kelipatanPersekutuanTerkecil = findLcm(x, y);
  print('Kelipatan Persekutuan Terkecil adalah: $kelipatanPersekutuanTerkecil');

  // Mencari dan mencetak Faktor Persekutuan Terbesar (FPB)
  int faktorPersekutuanTerbesar = findGcd(x, y);
  print('Faktor Persekutuan Terbesar adalah: $faktorPersekutuanTerbesar');

  // Kode dari blok main kedua
  // Buat objek AddOperation dan inisialisasi nilai _x dan _y
  AddOperation addOperation = AddOperation(5, 3);

  // Menampilkan hasil penjumlahan
  print('Hasil penjumlahan: ${addOperation.hasil()}');
}