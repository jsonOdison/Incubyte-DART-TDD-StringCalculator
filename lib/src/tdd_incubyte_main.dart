void main() {
  var calculator = Calculator();
  print(calculator.add('1,2,3')); // Output: 6
}

class Calculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;
    String delimiterPattern = r',|\n';
    if (numbers.startsWith('//')) {
      int delimiterIndex = numbers.indexOf('\n');
      String customDelimiter =
          RegExp.escape(numbers.substring(2, delimiterIndex));
      delimiterPattern = customDelimiter;
      numbers = numbers.substring(delimiterIndex + 1);
    }
    var nums = numbers.split(RegExp(delimiterPattern));
    return nums.map(int.parse).reduce((a, b) => a + b);
  }
}
