import 'package:flutter/material.dart';
import 'package:recap/widgets/itempageappbar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
       ItemPageAppBar()
        ],
      ),
    );
  }
}