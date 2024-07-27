import 'package:bloc_clean_architecture/config/colors/colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(
      {super.key,
      required this.title,
      this.height = 30,
      required this.width,
      required this.color,
      required this.onTap});
  final String title;
  final double height;
  final double width;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: AppColors.whiteColor),
          ),
        ),
      ),
    );
  }
}
