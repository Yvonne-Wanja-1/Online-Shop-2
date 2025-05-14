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
                width: 120,
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
                child: Stack( // Use an inner Stack to layer the image and the icon
                  children: [
                    Center( // Center the main image content
                      child: InkWell( // Corrected typo from Inwell
                        onTap: () {
                          // Handle tap event here, e.g., navigate to item details
                          print("Image tapped!");
                        },
                        child: Container(
                          margin: const EdgeInsets.all(3), // Margin around the image
                          child: ClipRRect( // Add ClipRRect to round the corners of the image
                            borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                            child: Image.asset(
                              'images/shoes.jpg', // Replace with your image path
                              height: 150, // Adjust size as needed within the 170px container
                              width: 150,  // Adjust size as needed
                              fit: BoxFit.cover, // BoxFit.cover often looks good with rounded corners
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align( // Position the favorite icon to the top-right
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0), // Padding around the icon
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 24, // Adjust icon size as needed
                        ),
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