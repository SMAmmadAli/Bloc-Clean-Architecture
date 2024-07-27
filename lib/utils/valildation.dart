class Validation {
  static bool emailValidator(String email) {
    final emailValid = RegExp(
      r'^[a-zA-Z0-9]+([._%+-]?[a-zA-Z0-9]+)*@[a-zA-Z0-9-]+\.[a-zA-Z]{2,}$',
    );

    return emailValid.hasMatch(email);
  }
}
