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
    List<int> negatives = [];
    int sum = 0;
    for (var part in nums) {
      int num = int.parse(part);
      if (num < 0) {
        negatives.add(num);
      } else {
        sum += num;
      }
    }
    if (negatives.isNotEmpty) {
      throw ArgumentError(
          'negative numbers not allowed ${negatives.join(", ")}');
    }
    return sum;
  }
}
