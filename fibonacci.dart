/* Reposta do exercício 3
 (Criação de sistema de Fibonacci) */

class Fibonacci {
  List<int> fibonacciList = [1, 1, 2];

  void fibonacci(int value) {
    int index = fibonacciList[value - 1];
    if ((index % 2) == 0) {
      fibonacciList.add(fibonacciList[value - 1] +
          fibonacciList[value - 2] +
          fibonacciList[value - 3]);
    } else {
      fibonacciList.add(fibonacciList[value - 1] + fibonacciList[value - 2]);
    }
  }

  void processValues(int val) {
    for (int i = 3; i < val; i++) {
      fibonacci(i);
    }
    showDetails(val);
  }

  void showDetails(int value) {
    print("###### Essa é a sequência fibonacci para o número inserido: ######");
    print(fibonacciList);
    fibonacciList.contains(value)
        ? print("O valor $value, faz parte da sequência de fibonacci")
        : print("O valor $value, não faz parte da sequência de fibonacci");

    print('\n' * 1);
  }
}
