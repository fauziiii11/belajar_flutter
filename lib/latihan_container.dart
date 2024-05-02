import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class LatihanWidget extends StatelessWidget {
  const LatihanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Container'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue[300],
        margin: EdgeInsets.all(30),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(30),
          color: Color.fromARGB(255, 4, 165, 26),
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.all(30),
            color: Color.fromARGB(255, 255, 0, 0),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(30),
              color: Color.fromARGB(255, 255, 0, 212),
              // child: BelajarHelloWord(),
            ),
          ),
        ),
      ),
    );
  }
}