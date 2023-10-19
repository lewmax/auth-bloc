import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/theme/app_colors.dart';

class SocialButtonWidget extends StatelessWidget {
  final String icon;
  final double? height;
  final Function() onTap;

  const SocialButtonWidget({
    required this.icon,
    required this.onTap,
    super.key,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final double h = height ?? 56.h;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: h,
        padding: EdgeInsets.only(top: h / 4, bottom: h / 4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.darkGrey2),
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
