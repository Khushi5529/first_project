// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:my_app/homescreen.dart';

class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            height: screenHeight * 0.75,
            width: double.infinity,
            child: Image.asset(
              'assets/images/coffee_image.png',
              fit: BoxFit.cover,
              alignment: Alignment(0, -0.6),
            ),
          ),

          Positioned(
            bottom: screenHeight * 0.25 + 10,
            left: 24,
            right: 24,
            child: Text(
              'Fall in Love with\n Coffee in Blissful\n Delight!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
                height: 1.5,
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight * 0.25,
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to our cozy coffee corner, where every cup is a delight for you.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[300], fontSize: 18),
                  ),
                  SizedBox(height: 30.0),
                  SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFD07E42),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onPressed: () {
                        
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
  );
},

                      
                      child: const Text(
                        'Get Started',
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}