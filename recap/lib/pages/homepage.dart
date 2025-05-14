import 'package:flutter/material.dart';
import 'package:recap/widgets/homepageappbar.dart';
import 'package:recap/widgets/itemswidget.dart';

// Define a data class for category information
class _CategoryData {
  final String imagePath;
  final String label;

  const _CategoryData({required this.imagePath, required this.label});
}

// List of category data
final List<_CategoryData> _categories = [
  const _CategoryData(imagePath: 'images/bag.jpg', label: 'Bags'),
  const _CategoryData(imagePath: 'images/hat.jpg', label: 'Hats'),
  const _CategoryData(imagePath: 'images/heels.jpg', label: 'Heels'),
  const _CategoryData(imagePath: 'images/shoes.jpg', label: 'Shoes'),
  const _CategoryData(imagePath: 'images/bag.jpg', label: 'Shoes'), // Note: Original had 'Shoes' for bag.jpg
  const _CategoryData(imagePath: 'images/school bag.jpg', label: 'School Bags'),
  const _CategoryData(imagePath: 'images/briefcase.jpg', label: 'Briefcases'),
  const _CategoryData(imagePath: 'images/2.jpg', label: 'Heels'),
  const _CategoryData(imagePath: 'images/watch.jpg', label: 'Watches'),
  const _CategoryData(imagePath: 'images/bag.jpg', label: 'Shoes'), // Note: Original had 'Shoes' for bag.jpg
];

// A reusable widget for displaying a single category item
class _CategoryItemWidget extends StatelessWidget {
  final _CategoryData category;

  const _CategoryItemWidget({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 2),
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        boxShadow: const [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              category.imagePath,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            category.label,
            style: const TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontFamily: 'Arial', // Ensure 'Arial' font is available or use default italic style
              fontWeight: FontWeight.normal,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0), // Added padding to the entire body for consistent spacing
          child: ListView(
            children: [
              HomePageAppBar(),
              const SizedBox(height: 20), // Added spacing after the app bar
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)), // Added rounded corners to the container
                  color: Colors.grey,
                ),
                height: 500,
                width: double.infinity,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Added padding inside the container
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 10), // Added spacing at the top of the column
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Centered the row horizontally
                          children: [
                            Center(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width * 0.8, // Set width to 80% of screen width
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.blue,
                                      blurRadius: 5,
                                      offset: Offset(0, 3), // Added shadow to the container
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(20)), // Added rounded corners
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0), // Added padding around the search icon
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                    ),
                                    const Text(
                                      'Search here ...',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    const Spacer(), // Added spacer to push the camera icon to the right
                                    const Padding(
                                      padding: EdgeInsets.all(8.0), // Added padding around the camera icon
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.blue,
                                        size: 30,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10), // Added spacing after the search bar
                        const Text(
                          'Categories',

                          style: TextStyle(
                            //underline:
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(height: 10), // Added spacing before the categories row
                        SingleChildScrollView(

                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(_categories.length, (index) {
                              return Padding(
                                // Add right padding to all but the last item for spacing
                                padding: EdgeInsets.only(right: (index < _categories.length - 1) ? 10.0 : 0.0),
                                child: _CategoryItemWidget(category: _categories[index]),
                              );
                            }),
                          ),
                        ), 
                        Container(
                          alignment: Alignment.centerLeft,// meaning left alignment
                          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                          child: const Text(
                            'Best Selling Products: ',
                           

                            style: TextStyle(
                               //underline:
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              decorationThickness: 2,
                              decorationStyle: TextDecorationStyle.solid,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.blue,
                            ),
                          ),
                        ),
SizedBox(height: 10), // Added spacing before the items widget
                        Itemswidget(),
                      

                      ], // Closes Column's children
                    ), // Closes Column
                  ), // Closes Padding (child of Center)
                ), // Closes Center
              ), // Closes grey Container
            ], // Closes ListView's children
          ), // Closes ListView
        ), // Closes Padding (body padding)
      ), // Closes Scaffold
    ); // Closes SafeArea
  }
}