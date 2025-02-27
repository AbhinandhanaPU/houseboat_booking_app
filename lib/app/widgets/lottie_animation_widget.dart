import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {
  final String animationPath;
  final double? width;
  final double? height;
  final BoxFit fit;
  final bool repeat;

  const LottieWidget({
    super.key,
    required this.animationPath,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.repeat = true,
  });

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      animationPath,
      width: width,
      height: height,
      fit: fit,
      repeat: repeat,
    );
  }
}
