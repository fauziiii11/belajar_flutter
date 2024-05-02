import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.amber,
        width: 300,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call,
                  size: 28,
                ),
                Container(
                  color: Colors.amber,
                  width: 30,
                  height: 5,
                ),
                Text("call")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.route,
                 size: 28,
                 ),
                  Container(
                  color: Colors.amber,
                  width: 30,
                  height: 5,
                ),
                 Text("route")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                 size: 28,
                 ),
                  Container(
                  color: Colors.amber,
                  width: 30,
                  height: 5,
                ),
                 Text("share")
              ],
            ),
          ],
        ),
      ),
    );
  }
}