import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/constants/theme/app_colors.dart';
import '../core/constants/theme/app_text_styles.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String title;
  final Color? titleColor;
  final double height;
  final BorderRadiusGeometry? borderRadius;
  final bool isUpperCase;
  final Function()? onTap;
  final BoxBorder? border;
  final TextStyle? textStyle;
  final Widget? prefix;
  final bool isEnabled;

  const ButtonWidget({
    required this.color,
    required this.title,
    required this.height,
    this.onTap,
    this.titleColor,
    this.border,
    this.isEnabled = true,
    this.isUpperCase = true,
    this.borderRadius,
    this.textStyle,
    super.key,
    this.prefix,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isEnabled ? onTap : null,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: isEnabled ? color : AppColors.darkGrey3,
          borderRadius: borderRadius ?? BorderRadius.circular(10.w),
          border: border,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (prefix != null) prefix!,
            Text(
              isUpperCase ? title.toUpperCase() : title,
              textAlign: TextAlign.center,
              style: textStyle?.copyWith(color: titleColor) ??
                  AppTextStyles.p1Bold.copyWith(
                    color: isEnabled ? titleColor : AppColors.lightGrey,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
