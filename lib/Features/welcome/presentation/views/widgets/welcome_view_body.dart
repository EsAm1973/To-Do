import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/Core/utils/app_router.dart';
import 'package:todo_app/Core/utils/styles.dart';
import 'package:todo_app/Core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Text(
            'Welcome to UpTodo',
            style: Styles.textStyle32.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            textAlign: TextAlign.center,
            'Please login to your account or create new account to continue',
            style: Styles.textStyle16.copyWith(color: Colors.white70),
          ),
          const Spacer(),
          CustomButton(
            text: 'LOGIN',
            onPressed: () {
              // Navigate to login screen
              GoRouter.of(context).pushReplacement(AppRouter.kLoginView);
            },
          ),
          const SizedBox(height: 28),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: OutlinedButton(
              onPressed: () {
                // Navigate to create account screen
                GoRouter.of(context).pushReplacement(AppRouter.kSignupView);
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Color(0xFF8875FF)),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Text(
                'CREATE ACCOUNT',
                style: Styles.textStyle16.copyWith(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
