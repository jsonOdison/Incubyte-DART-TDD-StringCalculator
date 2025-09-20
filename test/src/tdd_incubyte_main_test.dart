import 'package:tdd_incubyte/src/tdd_incubyte_main.dart';
import 'package:test/test.dart';

void main() {
  test('empty string returns 0', () {
    expect(Calculator().add(''), 0);
  });
  test('single number returns same number', () {
    expect(Calculator().add('1'), 1);
  });
}
