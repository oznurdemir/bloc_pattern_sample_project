import 'package:bloc_pattern_sample_project/data/repo/math_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int>{
  HomePageCubit() : super(0); // Bu class çalıştığında varsayılan değer 0 olacak.
  var mRepo = MathRepository();
  void sum(String num1, String num2){
    int result = mRepo.sum(num1, num2);
    emit(result); // Tetikleme ve veri gönderme
  }
  void multiplex(String num1, String num2){
    int result = mRepo.multiplex(num1, num2);
    emit(result); // Tetikleme ve veri gönderme
  }
}