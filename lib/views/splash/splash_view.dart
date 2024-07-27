import 'package:bloc_clean_architecture/config/colors/colors.dart';
import 'package:bloc_clean_architecture/config/components/round_button.dart';
import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ),
      body: Center(
        child: RoundButton(
            title: "Move to Login Screen",
            height: 40,
            width: MediaQuery.of(context).size.width * 0.6,
            color: AppColors.blueColor,
            onTap: () {
              Navigator.pushNamed(context, RoutesName.loginScreen);
            }),
      ),
    );
  }
}
