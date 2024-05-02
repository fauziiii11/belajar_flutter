import 'package:belajar_flutter/main.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(30),
      alignment: Alignment.center,
      // transform: Matrix4.rotationY(0.1),
      decoration: BoxDecoration(
       // color: Colors.blueGrey,
        gradient: RadialGradient(
          colors: [Color.fromARGB(221, 255, 0, 0), Color.fromARGB(255, 0, 58, 248), Color.fromARGB(255, 127, 4, 241)],
        ),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 3),
      ),
      // child: BelajarHelloWord(),
    );
  }
}