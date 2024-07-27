import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                EmailInputWidget(emailFocusNode: emailFocusNode),
                const SizedBox(
                  height: 20,
                ),
                PasswordInputWidget(passwordFocusNode: passwordFocusNode),
                const SizedBox(
                  height: 20,
                ),
                LoginButtonWidget(formkey: _formKey)
              ],
            )),
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     const Loading(height: 20, width: 20, color: AppColors.blueColor),
      //     const SizedBox(height: 20),
      //     Center(
      //       child: RoundButton(
      //           title: AppText.loginText,
      //           height: 40,
      //           width: MediaQuery.of(context).size.width * 0.6,
      //           color: AppColors.blueColor,
      //           onTap: () {
      //             Navigator.pushNamed(
      //               context,
      //               RoutesName.homeScreen,
      //               arguments: "Hello from Login",
      //             );
      //           }),
      //     ),
      //   ],
      // )
    );
  }
}
