import 'package:bloc_clean_architecture/utils/valildation.dart';
import 'package:flutter/material.dart';

class EmailInputWidget extends StatelessWidget {
  const EmailInputWidget({super.key, required this.emailFocusNode});
  final FocusNode emailFocusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      focusNode: emailFocusNode,
      decoration: const InputDecoration(
          hintText: "Email", border: OutlineInputBorder()),
      onChanged: (value) {},
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter an email';
        } else if (!Validation.emailValidator(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      onFieldSubmitted: (value) {},
    );
  }
}
