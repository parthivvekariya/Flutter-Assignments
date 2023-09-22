import 'package:flutter/material.dart';

import '52calculator.dart';

class NumberListScreen extends StatelessWidget {
  final int firstNumber;
  final int secondNumber;

  NumberListScreen({required this.firstNumber, required this.secondNumber});

  @override
  Widget build(BuildContext context) {
    List<int> numbers = List.generate(
      (secondNumber - firstNumber).abs() + 1,
          (index) => firstNumber + index,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text('Number Range App'),
        ),
        body: Center(
            child: ListView.builder(
              itemCount: numbers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(numbers[index].toString()),
                );
              },
            ),
 ),
      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => MyApp6()));
        },
      ),
 );

 }
}