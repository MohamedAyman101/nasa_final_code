import 'package:flutter/material.dart';

class PlanktonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),

            // First Image
            Image.asset(
              'images/question_man.png', // Replace with your actual image path
              height: 150,
            ),

            // First Text Box with Gradient
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text(
                'Plankton, particularly Phytoplankton, is responsible for producing more than 50% of the oxygen on Earth. While plants through photosynthesis are widely recognized for oxygen production, plankton plays a critical yet often overlooked role.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            // Second Image
            Image.asset(
              'images/plankton_micro.png', // Replace with your actual image path
              height: 150,
            ),

            // Second Text Box with Gradient
            Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text(
                'Oxygen production but also forms the foundation of the marine food chain. It absorbs carbon dioxide, helping regulate the Earth’s climate. However, despite its importance, this essential source of oxygen is under threat, potentially impacting both marine ecosystems and the global climate.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
