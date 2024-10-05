// main.dart

import 'package:flutter/material.dart';
import 'package:nasa/spaceExploration.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SpaceExplorationPage(), // Set SpaceExplorationPage as the first page
      debugShowCheckedModeBanner: false,
    );
  }
}

/**********************tutorial page*******/

/**********************************/






class TutorialUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Lesson_screen.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),]

    );}
}