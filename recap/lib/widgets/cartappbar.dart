import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: Row(
       children: [
         InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 3.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(2.0),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontFamily: 'Arial',
            fontStyle: FontStyle.italic,
          ),
        ),

        //smile emoji:
Text('😊', style: TextStyle(fontSize: 24),),

         Spacer(),
        InkWell(
          onTap: () {
            // Add your action here
          },
          child: Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 3.0,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            padding: const EdgeInsets.all(2.0),
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ),
       ],
      ),
    );
  }
}