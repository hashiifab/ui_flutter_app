import 'package:flutter/material.dart';

class OnboardingPage2 extends StatelessWidget {
  const OnboardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/images/onboarding2.png',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, -5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start, // Align items to start
                    children: [
                      const SizedBox(height: 130), // Spacing from image to text
                      const Text(
                        'Exclusive Collections',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'Discover exclusive collections from top brands that you won’t find anywhere else.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 320, // Adjusted for better positioning of indicators
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: index == 1 ? Colors.blue : Colors.grey, // Page 2 indicator
                    shape: BoxShape.circle,
                  ),
                );
              }),
            ),
          ),
          Positioned(
            bottom: 50, // Adjust for bottom buttons
            left: 40,
            right: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding3');
                  },
                  child: const Text('Skip'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/onboarding3');
                  },
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
