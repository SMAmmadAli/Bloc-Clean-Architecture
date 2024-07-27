import 'package:bloc_clean_architecture/services/splash/splash_services.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  SplashService _splashService = SplashService();

  @override
  void initState() {
    super.initState();
    _splashService.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Center(
          child: Text(
        "Splash Screen",
        style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
      )),
    ));
  }
}
