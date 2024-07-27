import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  const PasswordInputWidget({super.key, required this.passwordFocusNode});
  final FocusNode passwordFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: passwordFocusNode,
      obscureText: true,
      decoration: const InputDecoration(
          hintText: "Password", border: OutlineInputBorder()),
      onChanged: (value) {},
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter password";
        }
        if (value.length < 6) {
          return 'please enter password greater than 6';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
