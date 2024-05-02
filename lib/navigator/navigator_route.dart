import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAMILYFIN'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 115, 2, 160),
              ),
              child: Text(
                'LATIHAN FLUTTER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(height: 8), // Add spacing between buttons
            ElevatedButton(
              child: const Text('WISATA FAUNA'),
              onPressed: () {
                Navigator.pushNamed(context, '/lima');
              },
            ),
            SizedBox(height: 8), // Add spacing between buttons
            ElevatedButton(
              child: const Text('Formulir'),
              onPressed: () {
                Navigator.pushNamed(context, '/enam');
              },
            ),
            SizedBox(height: 8), // Add spacing between buttons
            ElevatedButton(
              child: const Text('BOOKING'),
              onPressed: () {
                Navigator.pushNamed(context, '/tujuh');
              },
            ),
            // Add more SizedBox widgets for additional spacing
          ],
        ),
      ),
      body: Center(
  child: Container(
    padding: EdgeInsets.all(39), // Meningkatkan padding agar container lebih besar
    decoration: BoxDecoration(
      color: Colors.green, // Mengubah warna menjadi hijau
      borderRadius: BorderRadius.circular(8),
    ),
    child: Text(
      'Total Saldo: Rp 1.000.000',
      style: TextStyle(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: Colors.white, // Menambahkan warna teks agar kontras dengan latar belakang
      ),
    ),
  ),
),

    );
  }
}
