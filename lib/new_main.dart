void main() {
  int number = 5;
  int result = factorial(number);
  print("The factorial of $number is $result");

  int numberOfTerms = 100;
  List<int> fibonacciSeries = generateFibonacci(numberOfTerms);

  print(
      "The first $numberOfTerms terms of the Fibonacci sequence are: $fibonacciSeries");
}

List<int> generateFibonacci(int terms) {
  List<int> fibonacciSequence = [];

  if (terms < 1) {
    return fibonacciSequence;
  }

  int a = 0, b = 1;
  fibonacciSequence.add(a);
  if (terms > 1) {
    fibonacciSequence.add(b);
  }

  for (int i = 2; i < terms; i++) {
    int next = a + b;
    fibonacciSequence.add(next);
    a = b;
    b = next;
  }

  return fibonacciSequence;
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
