import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../../../../core/utils/extensions.dart';

class OrRowWidget extends StatelessWidget {
  const OrRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(17.5.w, 40.h, 17.5.w, 40.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              decoration: const BoxDecoration(gradient: AppColors.gradient1),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 21.w, right: 21.w),
            child: Text(
              context.loc.or,
              style: AppTextStyles.size18.copyWith(color: AppColors.lightGrey),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              decoration: const BoxDecoration(gradient: AppColors.gradient1),
            ),
          ),
        ],
      ),
    );
  }
}
