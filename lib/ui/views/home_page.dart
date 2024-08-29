import 'package:bloc_pattern_sample_project/ui/cubit/home_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfNum1 = TextEditingController();
  var tfNum2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Dinleme Yapısı
              BlocBuilder<HomePageCubit,int>( // hangi cubit'i dinleyeceğiz ve ne döndürecek
                builder: (context, result){ //result dönecek
                  return Text(result.toString(), style: const TextStyle(fontSize: 50),); // sonucunu text'e yazacağız
                },
              ),
              TextField(controller: tfNum1, decoration: const InputDecoration(hintText: "Number 1"),),
              TextField(controller: tfNum2, decoration: const InputDecoration(hintText: "Number 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<HomePageCubit>().sum(tfNum1.text, tfNum2.text); //Fonksiyonu tetikleme
                  }, child: const Text("Sum")),
                  ElevatedButton(onPressed: (){
                    context.read<HomePageCubit>().multiplex(tfNum1.text, tfNum2.text);
                  }, child: const Text("Multiplication")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
