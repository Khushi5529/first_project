import 'package:flutter/material.dart';
import 'package:my_app/service/widget_support.dart';
import 'package:my_app/home.dart'; 

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Image.asset('assets/images/chef_image.png'),

            SizedBox(height: 20.0),

            Text(
              "The Fastest \n Food Delivery",
              textAlign: TextAlign.center,
              style: AppWidget.HeadlineTextFieldStyle(),
            ),

            SizedBox(height: 30.0),

            Text(
              " Craving something delicious?\n Order and get your favourites \n delivered fast",
              textAlign: TextAlign.center,
              style: AppWidget.SimpleTextFieldStyle(),
            ),

            SizedBox(height: 30.0),

            
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
