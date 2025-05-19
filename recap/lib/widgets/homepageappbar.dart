import 'package:flutter/material.dart';
//badge import
import 'package:badges/badges.dart' as custom_badge;

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              Icon(
                Icons.sort,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                'YW Shop',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: custom_badge.Badge(
                  position: custom_badge.BadgePosition.topEnd(top: -5, end: -5), // Adjust badge position
                  badgeStyle: custom_badge.BadgeStyle(
                    badgeColor: Colors.red,
                    padding: const EdgeInsets.all(5),
                    borderSide: BorderSide(color: Colors.white, width: 1), // Add a border for better visibility
                    elevation: 2, // Add elevation for a shadow effect
                    
                  ),
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white, // Change text color for better contrast
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      // Navigate to the cart page
                      Navigator.pushNamed(context, "/CartPage");
                    },
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}