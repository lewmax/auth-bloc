import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/assets.gen.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/app_routes.dart';
import '../../../core/utils/routing/global_navigator.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/button.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = GlobalNavigator();

    return BaseScreenWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(),
          Icon(
            Icons.accessibility_rounded,
            size: 35.w,
            color: AppColors.primary,
          ),
          Row(
            children: [
              Expanded(
                child: ButtonWidget(
                  color: AppColors.primary,
                  title: context.loc.signUp,
                  titleColor: AppColors.white,
                  onTap: () => navigator.pushNamed(AppRoutes.signUp),
                  height: 50.h,
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: ButtonWidget(
                  color: Colors.grey,
                  onTap: () => navigator.pushNamed(AppRoutes.signIn),
                  titleColor: AppColors.white,
                  title: context.loc.signIn,
                  height: 50.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
