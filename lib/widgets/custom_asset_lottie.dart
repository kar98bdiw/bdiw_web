import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class CustomAssetLottie extends StatelessWidget {
  final String asset;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;
  const CustomAssetLottie({
    super.key,
    required this.asset,
    this.fit,
    this.height,
    this.width,
    this.color,
  });

  double? get _parseWidth => width;
  double? get _parseHeight => height;
  BoxFit get _parseFit => fit ?? BoxFit.none;

  @override
  Widget build(BuildContext context) {
    return LottieBuilder.asset(
      asset,
      width: _parseWidth,
      height: _parseHeight,
      fit: _parseFit,
    );
  }
}
