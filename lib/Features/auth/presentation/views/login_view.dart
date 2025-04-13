import 'package:flutter/material.dart';
import 'package:todo_app/Features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:todo_app/constants.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: kMainColor,
        body: LoginViewBody(),
      ),
    );
  }
}