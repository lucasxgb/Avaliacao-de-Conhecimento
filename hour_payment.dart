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
  void getFamilySalary(double grossSalary, qntdSon) {
    if (grossSalary <= 788.00) {
      this.familySalary = 30.50 * qntdSon;
    } else if (grossSalary > 788.00 && grossSalary <= 1100.00) {
      this.familySalary = 18.50 * qntdSon;
    } else if (grossSalary > 1100.00) {
      this.familySalary = 11.90 * qntdSon;
    } else {
      this.familySalary = 30.50 * qntdSon;
    }
  }

  /*Função que calcula o salario liquido.
  */
  void calculateNetSalary(double salaryHour, int qntdSon, int qntdHourMonth) {
    if (salaryHour < 0) {
      print("Não é aceito valores negativos");
      print('\n' * 1);
    } else {
      calculateHourSalary(qntdHourMonth, salaryHour);
      this.getFamilySalary(this.grossSalary, qntdSon);
      this.netSalary = this.grossSalary + this.familySalary;

      this.showDataUser();
    }
  }

  /* Função que calcula o salario hora */
  void calculateHourSalary(int hours, double salaryHour) {
      this.grossSalary = salaryHour * hours;
  }

  void showDataUser() {
    print(" ############ Suas informações ############");
    print("O seu salário bruto é: ${this.grossSalary}");
    print("O seu salário familiar é: ${this.familySalary} ");
    print("O seu salário liquido é: ${this.netSalary} ");
    print('\n' * 1);
  }
}
