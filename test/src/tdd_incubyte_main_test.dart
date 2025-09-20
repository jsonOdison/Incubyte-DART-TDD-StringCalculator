import 'package:tdd_incubyte/src/tdd_incubyte_main.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(Calculator().add(''), 0);
  });
  test('single number returns same number', () {
    expect(Calculator().add('1'), 1);
  });
  test('two numbers return sum', () {
    expect(Calculator().add('1,5'), 6);
  });
  test('multiple numbers return sum', () {
    expect(Calculator().add('1,2,3,4'), 10);
  });
  test('new line delimiter returns sum', () {
    expect(Calculator().add('1\n2,3'), 6);
  });
}
