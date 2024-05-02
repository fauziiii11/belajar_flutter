// import 'package:belajar_flutter/latihan_listview.dart';
import 'package:belajar_flutter/gridview/grid_basic.dart';
import 'package:belajar_flutter/gridview/grid_builder.dart';
import 'package:belajar_flutter/gridview/grid_count.dart';
import 'package:belajar_flutter/gridview/latihan_grid.dart';
import 'package:belajar_flutter/latihan_listview.dart';
import 'package:belajar_flutter/navigator/navigator_route.dart';
import 'package:belajar_flutter/screens/booking_screen.dart';
import 'package:belajar_flutter/screens/form_screen.dart';
import 'package:belajar_flutter/screens/login_screen.dart';
import 'package:belajar_flutter/screens/profile.dart';
import 'package:belajar_flutter/screens/wisata_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'container_widget.dart';
import 'latihan_container.dart';
import 'column_widget.dart';
import 'row_widget.dart';
import 'tugas_row_column.dart';
import 'icon_widget.dart';
import 'listview_basic2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Belajar Flutter",
      home: Scaffold(
        body: const CheckAuth(),
        bottomNavigationBar: const BottomNavigationMenu(),
      ),
    );
  }
}

class CheckAuth extends StatefulWidget {
  const CheckAuth({Key? key}) : super(key: key);

  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;

  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      if (mounted) {
        setState(() {
          isAuth = true;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = HomePage();
    } else {
      child = LoginScreen();
    }

    return Scaffold(
      body: child,
    );
  }
}

class BottomNavigationMenu extends StatefulWidget {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu> {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    HomePage(),
    ListWisataScreen(),
    BookingScreen(),
    ProfileScreen(),
  ];

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: _changeTab,
        selectedItemColor: Colors.red, // Change the color here
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: "Saldo"),
          BottomNavigationBarItem(
              icon: Icon(Icons.view_stream), label: "Pemasukan"),
          BottomNavigationBarItem(
              icon: Icon(Icons.payment), label: "Pengeluaran"),
          BottomNavigationBarItem(
              icon: Icon(Icons.logout), label: "Logout"),
        ],
      ),
    );
  }
}



