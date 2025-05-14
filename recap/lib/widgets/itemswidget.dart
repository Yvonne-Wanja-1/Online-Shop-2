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
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        children: [
          Stack(
            children: [
              Container(
                height: 170, // Explicitly set the height of the grey container
                margin: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.blue, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start, // Align children to the top
                 // mainAxisSize: MainAxisSize.min,
                 // crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, right: 8.0), // Add padding from the top and right edges
                      child: Icon(
                        //position the icon to the right:
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  width: 40, // Set the width of the circle
                  height: 40, // Set the height of the circle
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '50%\noff',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}