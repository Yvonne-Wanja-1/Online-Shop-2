import 'package:flutter/material.dart';

class Itemswidget extends StatelessWidget {
  const Itemswidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      width: double.infinity,
      height: 195,
      clipBehavior: Clip.antiAlias,
      child: GridView.count(
        childAspectRatio: 0.68,
        crossAxisCount: 2,
        children: [
          Center( // Wrap the circular container in a Center widget
            child: Container(
               //position:
              margin: const EdgeInsets.only(top: 5, left: 5),
              width: 25, // Set the width of the circle
              height: 25, // Set the height of the circle
              alignment: Alignment.center,
              decoration: BoxDecoration(
               


                color: Colors.blue,
                shape: BoxShape.circle, // Make the container circular
              ),
              child: const Text(
                '50% off',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}