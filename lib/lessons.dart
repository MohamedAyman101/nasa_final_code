import 'package:flutter/material.dart';
import 'main.dart';

class LessonsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Lesson buttons and text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'LESSONS',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
                const SizedBox(height: 40),
                LessonButton(text: 'Lesson 1', page: TutorialUI()), // Navigate to TutorialUI on Lesson 1
                const SizedBox(height: 20),
                const LessonButton(text: 'Lesson 2'),
                const SizedBox(height: 20),
                const LessonButton(text: 'Lesson 3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LessonButton extends StatelessWidget {
  final String text;
  final Widget? page; // Add page property for navigation

  const LessonButton({required this.text, this.page});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        backgroundColor: Colors.purple[800], // Background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.transparent,
      ),
      onPressed: () {
        // Check if the page exists and navigate
        if (page != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page!),
          );
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
        ],
      ),
    );
  }
}
