import "dart:io";
/* Reposta do exercício 2 (Criação de sistema que recebe uma sequência de números) */

class ProcessNumbers {
  List<int> listNumber = [];

  void addInNumberList(int? value) {
    if (value != null) {
      this.listNumber.add(value);
    } else {
      print("############## Erro Recebido ##############");
      print("O valor recebido não é um número inteiro");
    }
  }

  void processNumber(int quantityNumber) {
    int counter = 0;

    while (counter < quantityNumber) {
      print("Insira o próximo número da sequência:");
      String? input = stdin.readLineSync();
      int? number = input != null ? int.tryParse(input) : null;
      this.addInNumberList(number);
      counter += 1;
    }

    showAllSequence();
    showMaxAndMin();
  }

  void showAllSequence() {
    print("############## Sequência de números recebida ##############");

    print(this.listNumber);
  }

  void showMaxAndMin() {
    int max = 0;
    int min = 0;
    int second = 0;

    List<int> orderList = [...this.listNumber];
    orderList.sort();
    max = orderList.last;
    min = orderList.first;
    if (max == min) {
      second = orderList.first;
    }

    while (orderList.contains(max)) {
      orderList.removeLast();
    }

    second = orderList.last;

    print(
        "############## Esses são o maior e menor número da sequência ##############");
    print("Máximo $max");
    print("Segundo maior $second");
    print("Mínimo $min");
    print('\n' * 1);
  }

  void clearList() {
    listNumber.clear();
  }
}
