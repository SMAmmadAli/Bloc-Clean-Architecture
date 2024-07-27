import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading(
      {super.key,
      required this.height,
      required this.width,
      required this.color});
  final double height;
  final double width;
  final Color color;

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Platform.isAndroid
          ? CupertinoActivityIndicator(
              color: widget.color,
            )
          : CircularProgressIndicator(
              color: widget.color,
            ),
    );
  }
}
