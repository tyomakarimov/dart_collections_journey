import 'dart:async';

Future<void> main() async {
  print('------------------- Task 6 -------------------');
  await task6();
  print('------------------- Task 7 -------------------');
  await task7();
  print('------------------- Task 8 -------------------');
  await task8();
}

Future<void> task6() async {
  Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5]);

  print('Await for:');
  await for (int value in stream) {
    print('Stream value: $value');
  }

  print('Listen:');
  stream.listen((value) {
    print('Stream value: $value');
  });
}

Future<void> task7() async {
  Stream<int> stream = Stream.periodic(
    Duration(seconds: 1),
    (count) => count + 1,
  ).take(10);

  await for (int value in stream) {
    print('$value...');
  }
}

Future<void> task8() async {
  final controller = StreamController<String>();

  controller.sink.add('Hello');
  controller.sink.add('World');
  controller.sink.add('Dart');

  controller.stream.listen(
    (value) => print(value),
    onDone: () => print('Stream is done'),
  );

  controller.close();
}
