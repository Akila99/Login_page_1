import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  LoginPage(),
      ),
    );
  }
}
