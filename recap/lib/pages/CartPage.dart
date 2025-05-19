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
          const SizedBox(height: 8),
          Container(
           // color: Colors.grey,
            height: 700,
            padding: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: Color(0xFFDCD3D3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),

              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueAccent,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Column(children: [


              
            ],),
          )
        ],
      ),
    );
  }
}