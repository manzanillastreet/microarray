import 'package:microarray/microarray.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {

    setUp(() {
      // Additional setup goes here.
    });

    test('Test push', () {
        final testArray = MicroArray();
        testArray.push("test");
        expect(testArray.length(), 1);
        expect(testArray.at(0), "test");
    });

    test('Test pop', () {
      final testArray = MicroArray();
      testArray.push("test");
      var val = testArray.pop();
      expect(val, "test");
      testArray.clear();
      expect(testArray.at(0), null);
    });

    test('Test shift', () {
      final testArray = MicroArray();
      testArray.push("test");
      var val = testArray.shift();
      // expect(val, "test");
      testArray.clear();
      expect(testArray.length(), 0);
    });

    test('Test at', () {
      final testArray = MicroArray();
      testArray.push("test");
      expect(testArray.at(0), "test");
    });
  });
}
