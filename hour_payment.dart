/* Reposta do exercício 1
 (Criação de sistema que recebe de calculo de valor a um empregado 
 horista) */



class HourPayment {
  double familySalary = 0.0;
  double grossSalary = 0.0;
  double netSalary = 0.0;

  /*Função que trata o processamento do salario bruto e retorna o valor
  do salário família
  */
  void getFamilySalary(double grossSalary) {
    if (grossSalary <= 788.00) {
      this.familySalary = 30.50;
    } else if (grossSalary > 788.00 && grossSalary <= 1100.00) {
      this.familySalary = 18.50;
    } else if (grossSalary > 1100.00) {
      this.familySalary = 11.90;
    } else {
      this.familySalary = 30.50;
    }
  }

  /*Função que calcula o salario liquido.
  */
  void calculateNetSalary(double grossSalary) {
    this.grossSalary = grossSalary;
    this.getFamilySalary(this.grossSalary);
    this.netSalary = this.grossSalary + this.familySalary;
    this.showDataUser();
  }

  void showDataUser() {
    print(" ############ Suas informações ############");
    print("O seu salário bruto é: ${this.grossSalary}");
    print("O seu salário familiar é: ${this.familySalary} ");
    print("O seu salário liquido é: ${this.netSalary} ");
    print('\n' * 1);
  }
}
