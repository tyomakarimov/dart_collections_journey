import 'dart:math';

import 'names.dart';

void main() {
  print('------------------- Task 1 -------------------');
  runTask();
  print('------------------- Task 2 -------------------');
  runTask2();
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

void runTask2() {
  Set<String> uniqueNames1 = Set.from(ukrainianNames1);

  Set<String> uniqueNames2 = Set.from(ukrainianNames2);

  Set<String> commonNames = uniqueNames1.intersection(uniqueNames2);
  print('Number of common names: ${commonNames.length}');

  Set<String> onlyInNames1 = uniqueNames1.difference(uniqueNames2);
  print('Names only in uniqueNames1: $onlyInNames1');

  Set<String> onlyInNames2 = uniqueNames2.difference(uniqueNames1);
  print('Names only in uniqueNames2: $onlyInNames2');
}
