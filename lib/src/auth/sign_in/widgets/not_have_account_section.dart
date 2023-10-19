import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/routing/app_routes.dart';
import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/routing/global_navigator.dart';

class NotHaveAccountSection extends StatelessWidget {
  const NotHaveAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 5.w,
      children: [
        Text(
          context.loc.dontHaveAnAccount,
          style: AppTextStyles.p1Bold,
        ),
        InkWell(
          onTap: () => GlobalNavigator().pushReplacementNamed(AppRoutes.signUp),
          child: Text(
            context.loc.signUp.toUpperCase(),
            style: AppTextStyles.p1Semi.copyWith(color: AppColors.primary),
          ),
        ),
      ],
    );
  }
}
