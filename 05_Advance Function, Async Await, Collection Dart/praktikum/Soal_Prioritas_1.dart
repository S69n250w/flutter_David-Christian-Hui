Future<List<int>> multiplyList(List<int> data, int multiplier) async {
  List<int> result = [];

  for (int value in data) {
    await Future.delayed(Duration(milliseconds: 100));

    int multipliedValue = value * multiplier;

    result.add(multipliedValue);
  }

  return result;
}

void main() async {
  List<int> inputList = [1, 2, 3, 4, 5];
  int multiplier = 2;

  List<int> result = await multiplyList(inputList, multiplier);

  print("Original List: $inputList");
  print("Multiplied List: $result");
}