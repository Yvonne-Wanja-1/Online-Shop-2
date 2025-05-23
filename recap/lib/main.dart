import 'package:flutter/material.dart';
import 'package:recap/pages/Itempage.dart';
import 'package:recap/pages/homepage.dart';
import 'package:recap/pages/CartPage.dart';
import 'package:recap/pages/Itempage.dart'; // Import for ItemPage

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Shop App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
     routes: {
        '/': (context) => const Homepage(),

      },
  
    );
  }
}