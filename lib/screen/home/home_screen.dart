import 'dart:developer';

import 'package:bdiw_web/theme/app_assets.dart';
import 'package:bdiw_web/theme/app_colors.dart';
import 'package:bdiw_web/widgets/custom_asset_image.dart';
import 'package:bdiw_web/widgets/custom_asset_lottie.dart';
import 'package:bdiw_web/widgets/custom_svg.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    log('build ${MediaQuery.of(context).size.width}');
    return Scaffold(
      // backgroundColor: AppColors.lightBg,
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: const CustomAssetLottie(
              asset: AppAssets.commingSoon,
              fit: BoxFit.contain,
            ),
          ),
          const Positioned(
            left: 50,
            top: 50,
            child: CustomAssetImage(
              asset: AppAssets.logo,
              width: 100,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
