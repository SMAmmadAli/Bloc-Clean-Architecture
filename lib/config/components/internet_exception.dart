import 'package:bloc_clean_architecture/config/colors/colors.dart';
import 'package:flutter/material.dart';

class InternetException extends StatelessWidget {
  const InternetException({super.key, required this.ontap});
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.aspectRatio * .15,
        ),
        const Icon(
          Icons.cloud_off,
          color: AppColors.redColor,
          size: 50,
        ),
        Center(
          child: Text(
            "We're unable to show result.\n please check your data\n Internet connection",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 20),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
        ),
        ElevatedButton(
            onPressed: ontap,
            child: Text(
              "RETRY",
              style: Theme.of(context).textTheme.bodySmall,
            ))
      ],
    );
  }
}
