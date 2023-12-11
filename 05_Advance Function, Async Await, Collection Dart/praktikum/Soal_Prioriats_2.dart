import 'dart:async';

void soal1() {
  print("Soal 1:");
  List<List<String>> dataList = [
    ['John', 'Doe'],
    ['Jane', 'Smith'],
    ['Bob', 'Johnson'],
  ];

  Map<int, List<String>> dataMap = {};

  for (int i = 0; i < dataList.length; i++) {
    dataMap[i + 1] = dataList[i];
  }

  print("List of Lists:");
  for (List<String> data in dataList) {
    print(data);
  }

  print("\nMap from List:");
  dataMap.forEach((key, value) {
    print("$key: $value");
  });
}


void soal2() {
  print("\nSoal 2:");
  List<int> nilai = [7, 5, 3, 5, 2, 1];

  double rataRata = hitungRataRata(nilai);
  int rataRataBulat = rataRata.ceil();

  print("Sampel Input: $nilai");
  print("Sampel Output: $rataRataBulat");
}

double hitungRataRata(List<int> nilai) {
  if (nilai.isEmpty) {
    return 0;
  }

  double total = nilai.reduce((a, b) => a + b).toDouble();
  return total / nilai.length;
}


void soal3() async {
  print("\nSoal 3:");
  int n = 5;
  int result = await hitungFaktorial(n);
  print("Faktorial dari $n adalah $result");
}

Future<int> hitungFaktorial(int n) async {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    int hasil = 1;
    for (int i = 2; i <= n; i++) {
      hasil *= i;
      await Future.delayed(Duration(milliseconds: 100)); // Simulasi operasi berat
    }
    return hasil;
  }
}



void main() {
  soal1();
  soal2();
  soal3();
}