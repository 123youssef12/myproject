import 'package:flutter/material.dart';
import 'package:my_app/screens/login_screen.dart';
import 'package:my_app/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute:"/" ,
     routes:{
      "/":(context) => const Welcome(),
       "/login":(context) => const Login(),
     } ,
    );
  }
}