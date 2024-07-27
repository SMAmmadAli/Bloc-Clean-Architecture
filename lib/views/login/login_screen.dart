import 'package:bloc_clean_architecture/config/colors/colors.dart';
import 'package:bloc_clean_architecture/config/colors/texts.dart';
import 'package:bloc_clean_architecture/config/components/loading.dart';
import 'package:bloc_clean_architecture/config/components/round_button.dart';
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Loading(height: 20, width: 20, color: AppColors.blueColor),
            const SizedBox(height: 20),
            Center(
              child: RoundButton(
                  title: AppText.loginText,
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.6,
                  color: AppColors.blueColor,
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      RoutesName.homeScreen,
                      arguments: "Hello from Login",
                    );
                  }),
            ),
          ],
        ));
  }
}
