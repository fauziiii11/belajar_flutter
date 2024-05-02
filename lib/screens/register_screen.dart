import 'dart:convert';

import 'package:belajar_flutter/helpers/size_helper.dart';
import 'package:belajar_flutter/main.dart';
import 'package:belajar_flutter/navigator/navigator_route.dart';
import 'package:belajar_flutter/providers/api.dart';
import 'package:belajar_flutter/screens/login_screen.dart';
// import 'package:belajar_flutter/screens/output_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //mendeskripsikan variabel input
TextEditingController namaController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passController = TextEditingController();

var _isLoading = false;
  bool _isHiddenPassword = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Register'),
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                margin: EdgeInsets.all(10),
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("REGISTER"),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: namaController,
                          decoration: InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'input nama';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'input email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        TextFormField(
                          controller: passController,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                            border: OutlineInputBorder()
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Input Password ';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 18,),
                        SizedBox(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.075,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(10),
                                  side: BorderSide(color: Colors.white60),
                                ),
                              ),
                            ),
                            child: Text("simpan"),
                            onPressed: () {
                              _submit();
                            },
                          ),
                        ),
                         SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {
                              _kembaliLogin();
                            },
                            child: Text(
                              "Kembali Ke Login",
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      // Perform login or any other action here
    }
  }

  void _kembaliLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }

void _register() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String email = emailController.text;
      String pass = passController.text;

      setState(() {
        _isLoading = true;
      });

      var data = {
        'name': nama,
        'email': email,
        'password': pass,
        'role': 'member'
      };
      var res = await Api().auth(data, '/register');
      var body = json.decode(res.body);
      _formKey.currentState!.save();

      if (res.statusCode == 200) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.setString('token', json.encode(body['token']));
        localStorage.setString('user', json.encode(body['user']));
        Navigator.pushReplacement(
          context,
          new MaterialPageRoute(builder: (context) => BottomNavigationMenu()),
        );
      } else {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
}

