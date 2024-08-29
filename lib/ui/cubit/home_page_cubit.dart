import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int>{
  HomePageCubit() : super(0); // Bu class çalıştığında varsayılan değer 0 olacak.

  void sum(String num1, String num2){
    int number1 = int.parse(num1);
    int number2 = int.parse(num2);
    int sum = number1 + number2;
    emit(sum); // Tetikleme ve veri gönderme
  }
  void multiplex(String num1, String num2){
    int number1 = int.parse(num1);
    int number2 = int.parse(num2);
    int multiplex = number1 * number2;
    emit(multiplex); // Tetikleme ve veri gönderme
  }
}