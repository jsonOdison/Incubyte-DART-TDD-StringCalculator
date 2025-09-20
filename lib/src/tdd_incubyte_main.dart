void main() {
  var calculator = Calculator();
  print(calculator.add('1,2,3')); // Output: 6
}

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    var nums = numbers.split(',');
    return nums.map(int.parse).reduce((a, b) => a + b);
  }
}
