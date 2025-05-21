import 'package:flutter/material.dart';

class CartBottomBar extends StatelessWidget {
  const CartBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Ensures the column only takes necessary vertical space
      children: [
        Container(
        padding: EdgeInsets.all(5),
       
       

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
        Text(
          'Total:',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        
        Text(
          '\$100.00',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
          ],
        ), // Close Row
      ), // Close Container
      SizedBox(height: 3),
         Container(
          margin: EdgeInsets.all(5),
           decoration: BoxDecoration(
          color: Colors.blue, // Moved color inside BoxDecoration
          borderRadius: BorderRadius.circular(20),

           border: Border.all(
          color: Colors.red,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],


        ),

        width: double.infinity,
           child: ElevatedButton(
            onPressed: () {
              // Handle checkout action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              'Checkout',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
                   ),
         ), // Close ElevatedButton (no comma as it's the last item in the Column's children)
      ],
    );
  }
}