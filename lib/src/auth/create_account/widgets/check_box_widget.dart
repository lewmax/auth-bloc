import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/assets.gen.dart';


class CheckBoxWidget extends StatelessWidget {
  final bool value;
  final Function(bool) onTap;

  const CheckBoxWidget({required this.value, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(!value);
      },
      child: Container(
        height: 16.h,
        width: 16.h,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: value ? null : Border.all(color: AppColors.lightGrey),
          color: value ? AppColors.secondary : null,
        ),
        child: SvgPicture.asset(Assets.icons.checkbox),
      ),
    );
  }
}
