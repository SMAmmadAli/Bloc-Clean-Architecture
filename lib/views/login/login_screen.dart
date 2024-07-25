import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              RoutesName.homeScreen,
              arguments: "Hello from Login",
            );
          },
          child: const Text("Move to Home Screen"),
        ),
      ),
    );
  }
}
