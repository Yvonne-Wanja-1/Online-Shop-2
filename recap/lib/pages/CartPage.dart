import 'package:flutter/material.dart';
import 'package:recap/widgets/cartappbar.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
        ],
      ),
    );
  }
}