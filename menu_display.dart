import 'dart:io';

import 'fibonacci.dart';
import 'hour_payment.dart';
import 'numbers_sequence.dart';

/* Funcionalidades auxiliares para criação e exibição de menu */

void showMenu() {
  print("[1] - Acessar o sistema completo");
  print("[0] - Encerrar o Sistema");
  print("Insira a opção desejada: ");
  String? input = stdin.readLineSync();
  int? number = input != null ? int.tryParse(input) : null;
  while (number != 0) {
    number = showMenuOptions();

    switch (number) {
      case 0:
        break;
      case 1:
        HourPayment hourPayament = HourPayment();
        print("Insira o Salario Bruto: ");
        String? input = stdin.readLineSync();
        double? grossSalary = input != null ? double.tryParse(input) : null;
        grossSalary == null
            ? print(
                "O número inserido não pode ser lido, deve estar no formato: XXXX.XX")
            : hourPayament.calculateNetSalary(grossSalary);
        break;
      case 2:
        ProcessNumbers processNumber = ProcessNumbers();
        int? quantityNumber = showOptionDetails(
            "Insira a quantidade de números que irá inserir: ");
        quantityNumber == null
            ? print("O valor inserido não é válido: ")
            : processNumber.processNumber(quantityNumber);
        break;
      case 3:
        Fibonacci fibonacciSequence = Fibonacci();
        int? fiboNumber = showOptionDetails(
            "Insira o número que deseja descobrir o fibonnaci ");
        fiboNumber == null
            ? print("O valor inserido não é válido: ")
            : fibonacciSequence.processValues(fiboNumber);
        break;
      default:
        print("Opção inválida, por favor selecione outra opção: ");
        print("\n" * 1);
        break;
    }
  }
  print("Programa Encerrado");
}

int? showMenuOptions() {
  print("[1] - Acessar o sistema de cálculo horista");
  print("[2] - Acessar o sistema de sequência de números");
  print("[3] - Acessar o sistema da sequência de Fibonacci");
  print("[0] - Encerrar o Sistema");
  print("Insira a opção desejada: ");

  String? input = stdin.readLineSync();
  return input != null ? int.tryParse(input) : null;
}

int? showOptionDetails(String textDescription) {
  print(textDescription);
  String? input = stdin.readLineSync();
  return input != null ? int.tryParse(input) : null;
}
