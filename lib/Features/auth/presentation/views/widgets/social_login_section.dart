import 'package:flutter/material.dart';
import 'package:todo_app/Core/widgets/social_login_button.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SocialButton(
      text: 'Login with Google',
      iconPath: 'assets/icons/google.png',
      onPressed: () {
        // Handle Google login
      },
    );
  }
}
