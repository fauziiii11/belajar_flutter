import 'package:flutter/material.dart';

class latihanRowColum extends StatelessWidget {
  const latihanRowColum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
          color: Colors.amber,
          child: FlutterLogo(
            size: 60,
          ),
        ),
        Container(
          color: Colors.deepPurple,
          child: FlutterLogo(
            size: 60,
          ),
        ),
        Container(
          color: Colors.pink,
          child: FlutterLogo(
            size: 60,
          ),
        ),
          ],
        )
        
      ],
    );
    
  }
}