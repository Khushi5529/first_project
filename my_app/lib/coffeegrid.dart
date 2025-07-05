// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CoffeeGrid extends StatelessWidget {
  final List<Map<String, dynamic>> coffeeList;

  CoffeeGrid({
    super.key,
    this.coffeeList = const [
      {
        'name': 'Caffè Mocha',
        'price': '\$4.99',
        'image': 'assets/images/caffeemocha_image.png',
      },
      {
        'name': 'Flat White',
        'price': '\$4.49',
        'image': 'assets/images/flatwhite_image.png',
      },
      {
        'name': 'Doppio',
        'price': '\$3.99',
        'image': 'assets/images/doppio_image.png',
      },
      {
        'name': 'French Press',
        'price': '\$5.29',
        'image': 'assets/images/frenchpass_image.png',
      },
    ],
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: coffeeList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        final coffee = coffeeList[index];
        return Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  coffee['image'],
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                coffee['name'],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coffee['price'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[800],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFD07E42),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(6),
                    child: Icon(Icons.add, color: Colors.white, size: 16),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
