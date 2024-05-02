import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  final List<String> Gallery = [
    "assets/img/adit.jpg",
    "assets/img/denis.jpg",
    "assets/img/sopo.png",
    "assets/img/jarwo.jpg",
    "assets/img/adel.jpg",
    "assets/img/yuni.png",

  ];

  @override
  Widget build(BuildContext context) {
    var data = 1;
    var color = 0;

    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 200,
          color: Color.fromARGB(255, 0, 172, 0),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Text(
                "ADIT & SOPO JARWO",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Image.network(
                  "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/6937/976937-h",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/ASJ_karakter.jpg/500px-ASJ_karakter.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                height: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Image.network(
                  "https://img1.hotstarext.com/image/upload/f_auto,t_web_m_1x/sources/r1/cms/prod/6937/976937-h",
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),

        // HORIZONTAL

        Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: 200,
          color: Color.fromARGB(255, 0, 172, 0),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network("assets/img/adit.jpg", fit: BoxFit.cover),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Adit",
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
                    Image.network("assets/img/denis.jpg", fit: BoxFit.cover),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Denis",
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
                    Image.network("assets/img/sopo.png", fit: BoxFit.cover),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Sopo",
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
                    Image.network("assets/img/jarwo.jpg", fit: BoxFit.cover),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          "Jarwo",
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

        // GRID GALLERY

       Container(
  margin: EdgeInsets.all(16),
  padding: EdgeInsets.all(10),
  width: double.infinity,
  color: Color.fromARGB(255, 0, 172, 0),
  child: SingleChildScrollView(
    scrollDirection: Axis.vertical, 
    child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          color: Colors.green[color += 100],
          child: Center(
            child: Image.network(
              '${Gallery[index]}',
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    ),
  ),
),
      ],
    );
  }
}