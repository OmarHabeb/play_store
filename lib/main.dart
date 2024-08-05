import 'package:flutter/material.dart';
import 'package:play_store/home.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Play_store',
    initialRoute: "home",
   routes: {
      "home" :(context)=>home()
   },
    );
  }
}
