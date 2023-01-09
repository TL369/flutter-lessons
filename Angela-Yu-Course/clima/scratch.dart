import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
  task4();
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() {
  Duration threeSeconds = const Duration(seconds: 3);
  String result;
  return Future.delayed(threeSeconds, () {
    String result = 'Huy';
    print('Task 2 complete');
    return result;
  });
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}

void task4() {
  print("Task 4 complete");
}
