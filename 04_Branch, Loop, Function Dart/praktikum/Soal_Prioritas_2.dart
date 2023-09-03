import 'dart:io';
import 'dart:math';

void piramida1() {
  print("Tugas Looping, Soal 1:\n");
  int tinggiPiramida = 8;

  for(int i = 1; i <= tinggiPiramida; i++) {
    for(int j = 1; j <= tinggiPiramida - i; j++) {
      stdout.write(" ");
    }

    for(int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("*");
    }

    print(" ");
  }
}

void piramida2() {
  print("\nTugas Looping, Soal 2:\n");
  int tinggiPiramida = 6;

  for(int i = tinggiPiramida; i >= 2; i--) {
    for(int j = 1; j <= tinggiPiramida - i; j++) {
      stdout.write(" ");
    }

    for(int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("0");
    }

    print(" ");
  }

  int tinggiPiramida2 = 6;

  for(int i = 1; i <= tinggiPiramida2; i++) {
    for(int j = 1; j <= tinggiPiramida2 - i; j++) {
      stdout.write(" ");
    }

    for(int k = 1; k <= 2 * i - 1; k++) {
      stdout.write("0");
    }

    print(" ");
  }
}

void faktorial() {
  print("\nTugas Looping, Soal 3:");
  List<int> angka = [10, 40, 50];
  for(int bilangan in angka) {
    int hasilFaktorial = hitungFaktorial(bilangan);
    print("Faktorial dari bilangan $bilangan adalah $hasilFaktorial");
  }
}

int hitungFaktorial(int bilangan) {
  if(bilangan == 0) {
    return 1;
  } else {
    int faktorial = 1;
    for(int i = 1; i <= bilangan; i++) {
      faktorial *= i;
    }
    return faktorial;
  }
}

void lingkaran() {
  print("\nTugas Function, Soal 1:");
  double r = 5;

  double Lling = menghitungLuasLing(r);

  print("Lling = $Lling");
}

double menghitungLuasLing(r) {
  return pi * pow(r,2);
}


void main() {
  piramida1();
  piramida2();
  faktorial();
  lingkaran();
}