import 'package:flutter/material.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/onboarding3.png',
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              width: double.infinity, // Ensure full width
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
                crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure children stretch horizontally
                mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
                children: [
                  const Text(
                    'Ayo Mulai!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Jelajahi produk dan mulai belanja sekarang!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 20), // Space before buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/product');
                    },
                    child: const Text('Ke Halaman Produk'),
                  ),
                  const SizedBox(height: 10), // Space between buttons
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/message');
                    },
                    child: const Text('Ke Halaman Pesan'),
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
