class MathRepository{
  int sum(String num1, String num2){
    int number1 = int.parse(num1);
    int number2 = int.parse(num2);
    int sum = number1 + number2;
    return sum;
  }
  int multiplex(String num1, String num2){
    int number1 = int.parse(num1);
    int number2 = int.parse(num2);
    int multiplex = number1 * number2;
    return multiplex;
  }
}