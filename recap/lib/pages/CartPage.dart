import 'package:flutter/material.dart';
import 'package:recap/widgets/cartappbar.dart';
import 'package:recap/widgets/cartitemsamples.dart';

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
child: Column(
  children: [
    CartItemSamples(),


Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10), // Added margin for better spacing
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15), // Added internal padding
                  decoration: BoxDecoration(
                    // color: Colors.white, // Uncomment if you want a distinct background
                    borderRadius: BorderRadius.circular(10), // Added border radius
                    // border: Border.all(color: Colors.blue.shade100), // Example border
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Centered the row items
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add, color: Colors.white), // Fixed missing color
                          onPressed: () {
                            // Add your action here
                          },
                        ),
                      ),
SizedBox(width: 10,),
                  const Text(
                    'Add Coupon Code',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.blue,
                      fontFamily: 'Arial',
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '🤩',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
    
  }
}