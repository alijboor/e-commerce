import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap({super.key, required this.height, this.width = 0.0});

  const Gap.h({super.key, required this.width, this.height = 0.0});
  const Gap.v({super.key, required this.height, this.width = 0.0});

  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}