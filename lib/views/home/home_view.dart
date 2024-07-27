import 'package:bloc_clean_architecture/config/components/internet_exception.dart';
import 'package:flutter/material.dart';

import '../../config/routes/routes_name.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.homeText});
  final String homeText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.splashScreen);
                },
                child: Text("Move to Splash Screen $homeText!")),
          ),
          InternetException(ontap: () {})
        ],
      ),
    );
  }
}
