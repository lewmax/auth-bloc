import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes_bloc/core/constants/theme/app_colors.dart';
import 'package:notes_bloc/core/constants/theme/app_text_styles.dart';
import 'package:notes_bloc/generated/l10n.dart';

class MyDialog extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? button1;
  final String button2;
  final Color? color1;
  final Color? color2;
  final Function()? onTap1;
  final Function()? onTap2;

  const MyDialog({
    required this.title,
    required this.button2,
    this.subtitle,
    this.button1,
    this.onTap1,
    this.onTap2,
    super.key,
    this.color1,
    this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: EdgeInsets.only(left: 53.w, right: 52.w),
      alignment: Alignment.center,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.darkGrey3,
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(17.w, 59.h, 17.w, 56.h),
              child: Column(
                children: [
                  Text(
                    title,
                    style: AppTextStyles.p1Bold.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: AppTextStyles.p2.copyWith(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                ],
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: AppColors.middleGrey),
                ),
              ),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 10.5.h,
                          bottom: 9.h,
                        ),
                        child: InkWell(
                          onTap: onTap1,
                          child: Text(
                            button1 ?? S.current.cancel,
                            style: AppTextStyles.p2Bold
                                .copyWith(color: color1 ?? AppColors.red),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.middleGrey,
                      width: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 10.5.h,
                          bottom: 9.h,
                        ),
                        child: InkWell(
                          onTap: onTap2,
                          child: Text(
                            button2,
                            style: AppTextStyles.p2Bold.copyWith(
                              color: color2 ?? AppColors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
