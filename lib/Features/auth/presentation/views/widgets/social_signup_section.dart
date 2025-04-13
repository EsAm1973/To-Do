import 'package:flutter/material.dart';
import 'package:todo_app/Core/widgets/social_login_button.dart';

class SocialSignupSection extends StatelessWidget {
  const SocialSignupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialButton(
      text: 'Register with Google',
      iconPath: 'assets/icons/google.png',
      onPressed: () {
        // Handle Google signup
      },
    );
  }
}
