import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfNum1 = TextEditingController();
  var tfNum2 = TextEditingController();
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page"),),
      body: Padding(
        padding: const EdgeInsets.only(right: 50, left: 50),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(result.toString(), style: const TextStyle(fontSize: 50),),
              TextField(controller: tfNum1, decoration: const InputDecoration(hintText: "Number 1"),),
              TextField(controller: tfNum2, decoration: const InputDecoration(hintText: "Number 2"),),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){

                  }, child: const Text("Sum")),
                  ElevatedButton(onPressed: (){

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
