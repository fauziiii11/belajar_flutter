import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tgl, agama;

  OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tgl,
    required this.agama,
  }) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Form'),
         backgroundColor: Color.fromARGB(255, 1, 192, 1),
        // You can customize the AppBar further as needed
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: $nama"),
            Text("Jenis Kelamin: $jk"),
            Text("Tanggal Lahir: $tgl"),
            Text("Agama: $agama"),
          ],
        ),
      ),
    );
  }
}