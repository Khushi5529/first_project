// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyAnimatedTextApp());
}

class MyAnimatedTextApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedTextScreen(),
    );
  }
}

class AnimatedTextScreen extends StatefulWidget {
  @override
  _AnimatedTextScreenState createState() => _AnimatedTextScreenState();
}

class _AnimatedTextScreenState extends State<AnimatedTextScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  bool _isTapped = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleGlow() {
    setState(() {
      _isTapped = !_isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: _toggleGlow,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: _isTapped ? Colors.purple[900] : Colors.transparent,
              borderRadius: BorderRadius.circular(30),
              boxShadow: _isTapped
                  ? [
                      BoxShadow(
                        color: Colors.purpleAccent,
                        blurRadius: 30,
                        spreadRadius: 5,
                      )
                    ]
                  : [],
            ),
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: TweenAnimationBuilder(
                duration: Duration(seconds: 2),
                tween: ColorTween(begin: Colors.white, end: Colors.purpleAccent),
                builder: (context, Color? color, _) {
                  return Text(
                    'Shine Bright ✨',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: color,
                      shadows: [
                        Shadow(
                          blurRadius: 10,
                          color: color!,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
