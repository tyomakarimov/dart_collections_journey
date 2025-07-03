import 'dart:math';

void main() {
  runTask();
}

void runTask() {
  final random = Random();
  List<int> numbers = List.generate(100, (_) => random.nextInt(101));

  print(numbers);

  print('65th element: ${numbers[64]}');

  numbers.insert(49, 1000000000);

  numbers.removeWhere((element) =>
      element == 24 || element == 45 || element == 66 || element == 88);

  int sum = 0;
  for (int number in numbers) {
    if (number % 3 == 0) {
      sum += number;
    }
  }
  print('Sum of elements divisible by 3 without a remainder: $sum');

  List<int> temp = [];
  for (var number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }

  print('Length of temp list: ${temp.length}');
}
