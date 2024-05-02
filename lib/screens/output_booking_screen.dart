import 'package:flutter/material.dart';

class OutputBookingScreen extends StatelessWidget {
  final String nama, qty, tgl, fauna;
  

  OutputBookingScreen({
    Key? key,
    
    required this.nama,
    required this.fauna,
    required this.qty,
    required this.tgl,
    
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Pengeluaran'),
         backgroundColor: Color.fromARGB(255, 207, 6, 191),
        // You can customize the AppBar further as needed
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Text("Nama: $nama"),
            Text('Kategori Pengeluaran: $fauna'),
            Text("Nominal Pengeluaran: $qty"),
            Text("Tanggal Pengeluaran: $tgl"),
            
          ],
        ),
      ),
    );
  }
}