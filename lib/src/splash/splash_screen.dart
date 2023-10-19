import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/theme/app_colors.dart';
import '../../core/constants/theme/assets.gen.dart';
import '../../widgets/base_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseScreenWidget(
      isSplashScreen: true,
      child: Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
    );
  }
}
