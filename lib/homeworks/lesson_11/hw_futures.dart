Future<void> main() async {
  print('------------------- Task 1 -------------------');
  await task1();
  print('------------------- Task 2 -------------------');
  await task2();
  print('------------------- Task 3 -------------------');
  await task3();
  print('------------------- Task 4 -------------------');
  await task4();
  print('------------------- Task 5 -------------------');
  await task5();
}

Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Artem';
}

Future<void> task1() async {
  String name = await fetchName();
  print('My name is $name');
}

Future<String> fetchAge() async {
  await Future.delayed(Duration(milliseconds: 1500));
  return '25';
}

String getYearWord(int age) {
  if (age % 10 == 1 && age % 100 != 11) {
    return 'рік';
  } else if ([2, 3, 4].contains(age % 10) &&
      !(age % 100 >= 12 && age % 100 <= 14)) {
    return 'роки';
  } else {
    return 'років';
  }
}

Future<void> task2() async {
  String age = await fetchAge();
  String yearWord = getYearWord(int.parse(age));
  print('Мені $age $yearWord');
}

Future<void> task3() async {
  Stopwatch nameStopwatch = Stopwatch()..start();

  await fetchName();

  nameStopwatch.stop();

  print('Execution time: ${nameStopwatch.elapsed.inSeconds} seconds');

  Stopwatch ageStopwatch = Stopwatch()..start();

  await fetchAge();

  ageStopwatch.stop();

  print('Execution time: ${ageStopwatch.elapsedMilliseconds} milliseconds');
}

Future<void> task4() async {
  Stopwatch stopwatch = Stopwatch()..start();

  await Future.wait([fetchName(), fetchAge()]);

  stopwatch.stop();

  print('Execution time: ${stopwatch.elapsedMilliseconds} milliseconds');
}

Future<String> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    print('$i...');
    await Future.delayed(Duration(seconds: 1));
  }
  return 'Start!';
}

Future<void> task5() async {
  String result = await delayedCountdown(3);
  print(result);
}
