import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as Badges; // Import the badges package

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
                  color: const Color.fromARGB(255, 182, 207, 227),
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
                          // The InkWell's child should be a single widget, like a Column
                          child: Column(
                            mainAxisSize: MainAxisSize.min, // Make the column take minimum vertical space
                            children: [
                              Container(
                                margin: const EdgeInsets.all(3), // Margin around the image
                                child: ClipRRect( // Add ClipRRect to round the corners of the image
                                  borderRadius: BorderRadius.circular(15.0), // Adjust the radius as needed
                                  child: Image.asset(
                                    'images/shoes.jpg', // Replace with your image path
                                    height: 100, // Adjusted height to leave space for text
                                    width: 100,  // Adjusted width
                                    fit: BoxFit.cover, // BoxFit.cover often looks good with rounded corners
                                  ),
                                ),
                              ),
                              // Text widgets below the image
                              Text('Shoes', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                              //undeline:
                              decoration: TextDecoration.underline,
                              )),
                              const SizedBox(height: 0), // Space between text and image
                           Padding(
                            padding: const EdgeInsets.all(2.0), // Padding around the text
                             child: Row(
                              children: [
                                Text(
                                  '\$12.99',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                Spacer(), // Spacer to push the next text to the right
                                //add to cart icon:
                                Container(
                                  width: 30, // Set the width of the circle
                                  height: 30, // Set the height of the circle
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Container(
                                    width: 30, // Set the width of the circle
                                    height: 30, // Set the height of the circle
                                    child: Badges.Badge(
                                     
                                      position: Badges.BadgePosition.topEnd(top: -3, end: -3), // Adjust badge position
                                      badgeStyle: Badges.BadgeStyle(
                                        badgeColor: Colors.red,
                                        padding: const EdgeInsets.all(4), // Increased padding
                                        borderSide: BorderSide(color: Colors.white, width: 1), // Add a border for better visibility
                                        elevation: 2, // Add elevation for a shadow effect
                                      ),
                                      
                                      badgeContent: Text(
                                        '1',
                                        style: const TextStyle( // Made TextStyle const
                                          color: Colors.white,
                                          fontSize: 10, // Increased font size
                                        ),
                                      ),
                                      
                                      
                                      
                                      child: Center(
                                        child: Icon(
                                          
                                          Icons.shopping_cart_rounded,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                             ),
                           )
                          ],
                            ),
                          ), // Closes Column
                      ),
                    ),
                    Positioned(
                      top: 1,
                      left: 3,
                      child: Container(
                        width: 30, // Set the width of the circle
                        height: 30, // Set the height of the circle
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
                    Positioned(
                      top: -2.0, // Adjusted to move the icon slightly higher
                      right: 5, // Position from the right edge
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 24, // Adjust icon size as needed
                        // You can add a semantic label for accessibility if desired:
                        // semanticLabel: 'Add to favorites',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}