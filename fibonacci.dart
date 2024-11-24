/* Reposta do exercício 3
 (Criação de sistema de Fibonacci) */


class Fibonacci {
  List<int> fibonacciList = [];

  int fibo(int value) {
    if (value == 0) {
      return 0;
    } else if (value == 1) {
      return 1;
    } else {
      return (fibo(value - 1) + fibo(value - 2));
    }
  }

  void addInList(int fibonacciValue) {
    fibonacciList.add(fibonacciValue);
  }

  void processValues(int val) {
    int temp = val;
    while (val > 0) {
      addInList(fibo(val));
      val -= 1;
    }
    showDetails(temp);
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
