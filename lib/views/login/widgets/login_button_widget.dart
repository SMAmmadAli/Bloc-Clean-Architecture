import 'package:bloc_clean_architecture/config/colors/colors.dart';
import 'package:bloc_clean_architecture/config/colors/texts.dart';
import 'package:bloc_clean_architecture/config/components/round_button.dart';
import 'package:bloc_clean_architecture/config/routes/routes_name.dart';
import 'package:flutter/material.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key, required this.formkey});
  final formkey;

  @override
  Widget build(BuildContext context) {
    return RoundButton(
        title: AppText.loginText,
        width: MediaQuery.of(context).size.width * 0.6,
        height: 40,
        color: AppColors.blueColor,
        onTap: () {
          if (formkey.currentState!.validate()) {
            print(AppText.loginText);
            Navigator.pushNamed(context, RoutesName.homeScreen,
                arguments: "Han hogya login");
          }
        });
  }
}
