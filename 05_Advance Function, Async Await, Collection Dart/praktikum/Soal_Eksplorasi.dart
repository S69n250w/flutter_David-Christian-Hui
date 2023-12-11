List<String> removeDuplicates(List<String> inputList) {
  List<String> uniqueList = [];
  for (String item in inputList) {
    if (!uniqueList.contains(item)) {
      uniqueList.add(item);
    }
  }
  return uniqueList;
}

void soal1() {
  print("Soal 1:");
  List<String> inputSample1 = ["amuse", "tommy kaira", "spoon", "HKS", "litchfield", "amuse", "HKS"];
  List<String> outputSample1 = removeDuplicates(inputSample1);
  print("Sampel Input 1: $inputSample1");
  print("Sampel Output 1: $outputSample1");

  print(" ");
  List<String> inputSample2 = ["JS Racing", "amuse", "spoon", "spoon", "JS Racing", "amuse"];
  List<String> outputSample2 = removeDuplicates(inputSample2);
  print("Sampel Input 2: $inputSample2");
  print("Sampel Output 2: $outputSample2");
}


Map<String, int> countFrequency(List<String> inputList) {
  Map<String, int> frequencyMap = {};

  for (String item in inputList) {
    if (frequencyMap.containsKey(item)) {
      frequencyMap[item] = frequencyMap[item]! + 1;
    } else {
      frequencyMap[item] = 1;
    }
  }

  return frequencyMap;
}

void soal2() {
  print("\nSoal 2:");
  List<String> inputSample = ["js", "js", "js", "golang", "python", "js", "js", "golang", "rust"];
  Map<String, int> outputSample = countFrequency(inputSample);

  print("Sampel Input: $inputSample");
  print("Sampel Output: $outputSample");
}


void main() {
  soal1();
  soal2();
}