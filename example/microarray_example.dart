import 'package:microarray/microarray.dart';

void main() {
  var testArray = MicroArray();

  // Benchmark push operation
  final pushStartTime = DateTime.now();
  for (var i = 0; i < 1000000; i++) {
    testArray.push("asdasd");
  }
  final pushEndTime = DateTime.now();
  final pushDuration = pushEndTime.difference(pushStartTime);
  print('Push duration: ${pushDuration.inMilliseconds} milliseconds');

  // Benchmark pop operation
  final popStartTime = DateTime.now();
  for (var i = 0; i < 1000001; i++) {
    testArray.pop();
  }
  final popEndTime = DateTime.now();
  final popDuration = popEndTime.difference(popStartTime);
  print('Pop duration: ${popDuration.inMilliseconds} milliseconds');

  print(testArray.at(0));
  testArray.clear();

  // Benchmark shift operation
  // final shiftStartTime = DateTime.now();
  // for (var i = 0; i < 1000000; i++) {
  //   testArray.shift();
  // }
  // final shiftEndTime = DateTime.now();
  // final shiftDuration = shiftEndTime.difference(shiftStartTime);
  // print('Shift duration: ${shiftDuration.inMilliseconds} milliseconds');

  // testArray.clear();

  // Benchmark at operation
  // final atStartTime = DateTime.now();
  // for (var i = 0; i < 1000000; i++) {
  //   int j = testArray.at(i);
  // }
  // final atEndTime = DateTime.now();
  // final atDuration = atEndTime.difference(atStartTime);
  // print('At duration: ${atDuration.inMilliseconds} milliseconds');
}
