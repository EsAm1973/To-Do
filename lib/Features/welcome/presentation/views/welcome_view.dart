import 'package:flutter/material.dart';
import 'package:todo_app/Features/welcome/presentation/views/widgets/welcome_view_body.dart';
import 'package:todo_app/constants.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const WelcomeViewBody(),
    );
  }
}
