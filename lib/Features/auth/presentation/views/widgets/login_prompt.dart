import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/Core/utils/app_router.dart';

class LoginPrompt extends StatelessWidget {
  const LoginPrompt({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Already have an account? ',
          style: TextStyle(color: Colors.white70),
        ),
        GestureDetector(
          onTap: () {
            GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
          },
          child: const Text(
            'Login',
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
