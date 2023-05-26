import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var arrayOfString = ['Hello', 'World'];
    var arrayOfInt = [1, 2, 3];
    var arrayOfObject = [
      {'name': 'John', 'age': 30},
      {'name': 'Jane', 'age': 25},
      {'name': 'Jack', 'age': 20},
    ];
    var arrayOfEmployee = [
      {'name': 'John', 'age': 30, 'salary': 1000},
      {'name': 'Jane', 'age': 25, 'salary': 2000},
      {'name': 'Jack', 'age': 20, 'salary': 3000},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('MyWidget'),
      ),
      body: Column(
        children: arrayOfEmployee.map((e) {
          return Text(e['name'].toString());
        }).toList(),
      ),
    );
  }
}
