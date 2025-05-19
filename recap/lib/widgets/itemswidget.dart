import 'package:flutter/material.dart';

class Itemswidget extends StatelessWidget {
  const Itemswidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'image': 'images/3.jpg', 'label': 'Shoes', 'discount': ' NEW!', 'price': '\$50.00'},
      {'image': 'images/bag.jpg', 'label': 'Bag', 'discount': '10%', 'price': '\$30.45'},
      {'image': 'images/watch.jpg', 'label': 'Watch', 'discount': '20%', 'price': '\$20.99'},
      {'image': 'images/hat.jpg', 'label': 'Hat', 'discount': '10%', 'price': '\$10'},
      {'image': 'images/44.jpg', 'label': 'Heels', 'discount': 'NEW!', 'price': '\$40.23'},
    ];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueAccent,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      width: double.infinity,
      // height: 300, // Removed fixed height to allow expansion
      clipBehavior: Clip.antiAlias,
      child: GridView.count(
        shrinkWrap: true, // Allows GridView to size itself to its content
        physics: const NeverScrollableScrollPhysics(), // Disables GridView's own scrolling
        padding: const EdgeInsets.all(8), // Padding around the grid
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.3, // Adjusted aspect ratio
        mainAxisSpacing: 8, // Slightly increased vertical spacing
        crossAxisSpacing: 8, // Slightly increased horizontal spacing
        children: items.map((item) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.blue, width: 2),
              boxShadow: const [
                BoxShadow(
                  color: Colors.blueAccent,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30), // Match the container's borderRadius
                  child: Image.asset(
                    item['image']!,
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover, // Ensures the image fills the container
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 5,
                  child: Container(
                    width: 36,
                    height: 36,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      item['discount']!,
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const Positioned(
                  top: 5,
                  right: 5,
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 20,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 10,
                  child: Text(
                    item['price']!,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Arial',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: Stack(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 16,
                          height: 16,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: const Text(
                            '1', // Badge count
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}