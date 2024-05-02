import 'package:flutter/material.dart';

class LatihanListView extends StatelessWidget {
  const LatihanListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan ListView'),
      ),
      body:
       Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 175, 17, 5),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Color.fromARGB(255, 255, 220, 23),
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget> [
                  Text("UP COMING", 
        style: TextStyle(
          fontSize:24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
           ),
            textAlign: TextAlign.center,
           ),
                  Container(
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: Colors.orange,
                    child: Image.network("assets/img/marvel1.webp", fit: BoxFit.cover,),
                  ),
                  Text("COMING SOON", 
        style: TextStyle(
          fontSize:24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
           ),
            textAlign: TextAlign.center,
           ),
                  Container(
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: Colors.orange,
                    child: Image.network("assets/img/marvel2.jpg", fit: BoxFit.cover,),
                  ),
                  Text("THE END (LAST SEASON)", 
        style: TextStyle(
          fontSize:24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
           ),
            textAlign: TextAlign.center,
           ),
                  Container(
                    height: 200,
                    margin: EdgeInsets.all(10),
                    color: Colors.orange,
                    child: Image.network("assets/img/marvel3.jpg", fit: BoxFit.cover,),
                  ),
                ],
              ),
            ),
            
            //HORIZONTAL
      
             Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              color: Color.fromARGB(255, 255, 220, 23),
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(8),
                children: <Widget> [
      
                  Container(
                 height: 50,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Stack(
                  fit: StackFit.expand,
                  children: [
                  Image.network("assets/img/captain.jpg", fit: BoxFit.cover),
                  Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
              "Captain",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
        ),
      ),
      
                   Container(
                 height: 50,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Stack(
                  fit: StackFit.expand,
                  children: [
                  Image.network("assets/img/spiderman.webp", fit: BoxFit.cover),
                  Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
              "spiderman",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
        ),
      ),
      
                   Container(
                 height: 50,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Stack(
                  fit: StackFit.expand,
                  children: [
                  Image.network("assets/img/ironman.jpg", fit: BoxFit.cover),
                  Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
              "Ironman",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
        ),
      ),
      
                   Container(
                 height: 50,
                  width: 200,
                  margin: EdgeInsets.all(10),
                  color: Colors.orange,
                  child: Stack(
                  fit: StackFit.expand,
                  children: [
                  Image.network("assets/img/hulk.webp", fit: BoxFit.cover),
                  Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
              "Hulk",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
        ),
      ),
      
          ],
        ),
             ),
          ],
        ),
      ),
    );
  }
}