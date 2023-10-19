import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/constants/theme/assets.gen.dart';
import '../core/utils/extensions.dart';

import 'svg_button.dart';

class BaseScreenWidget extends StatelessWidget {
  final bool isConfirmedScreen;
  final bool isArrowVisible;
  final bool isSplashScreen;
  final Widget child;
  final Widget? arrow;

  const BaseScreenWidget({
    required this.child,
    this.isConfirmedScreen = false,
    this.isArrowVisible = false,
    this.isSplashScreen = false,
    this.arrow,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff0c0c0c),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(
            25.w,
            MediaQuery.paddingOf(context).top,
            23.w,
            45.h,
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              arrow ??
                  SvgButtonWidget(
                    onTap: () => isArrowVisible ? Navigator.pop(context) : null,
                    height: 48.h,
                    padding: EdgeInsets.only(
                      top: 11.h,
                      bottom: 12.h,
                      right: 20.w,
                    ),
                    assetName: isArrowVisible ? Assets.icons.arrowLeft : null,
                  ),
              SizedBox(height: 9.h),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
