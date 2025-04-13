import 'package:flutter/material.dart';

class RegisterPrompt extends StatelessWidget {
  const RegisterPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don\'t have an account? ',
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            // Navigate to register screen
          },
          child: const Text(
            'Register',
            style: TextStyle(
              color: Color(0xFF8875FF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
