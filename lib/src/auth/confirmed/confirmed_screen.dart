import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../../../core/constants/theme/assets.gen.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/app_routes.dart';
import '../../../core/utils/routing/global_navigator.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/will_pop_scope.dart';

class ConfirmedScreen extends StatefulWidget {
  const ConfirmedScreen({super.key});

  @override
  State<ConfirmedScreen> createState() => _ConfirmedScreenState();
}

class _ConfirmedScreenState extends State<ConfirmedScreen> {
  ///pass bool as argument; true = password created; false = account created
  ///initialized in [didChangeDependencies]
  late bool isPasswordUpdated;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => GlobalNavigator().pushNamedAndRemoveUntil(
        isPasswordUpdated ? AppRoutes.signIn : AppRoutes.home,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScopeWidget(
      onWillPop: () {
        return Future.value(false);
      },
      child: BaseScreenWidget(
        isConfirmedScreen: true,
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(bottom: 80.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.adb_rounded, color: AppColors.primary, size: 35.w),
                SizedBox(
                  height: 36.16.h,
                ),
                Text(
                  isPasswordUpdated
                      ? context.loc.passwordUpdated
                      : context.loc.thankYou,
                  style: AppTextStyles.h2Bold.copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                Text(
                  isPasswordUpdated
                      ? context.loc.passwordChanged
                      : context.loc.accountCreated,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.p1.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    isPasswordUpdated =
        (ModalRoute.of(context)?.settings.arguments as bool?) ?? true;
    super.didChangeDependencies();
  }
}
