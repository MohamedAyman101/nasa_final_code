import 'package:flutter/material.dart';

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            const Text(
              'Interactive Lessons',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Discover interactive lessons and\nexplore real-world data on oceans\nand climate!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white60,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Action when "Skip" is pressed
                Navigator.pop(context); // Going back for now
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple[800],
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'images/astronaut.png',
              height: 600,
            ),
          ],
        ),
      ),
    );
  }
}
