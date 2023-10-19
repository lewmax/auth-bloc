import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import '../core/constants/theme/app_colors.dart';
import '../core/constants/theme/app_text_styles.dart';
import '../generated/l10n.dart';

class TextFieldWidget extends StatelessWidget {
  final double? verticalPadding;
  final String hintText;
  final Widget? suffixIcon;
  final Function()? onSuffix;
  final Widget? preffixIcon;
  final Function()? onPreffix;
  final TextEditingController? controller;
  final GlobalKey<FormFieldState>? globalKey;
  final bool obscure;
  final bool isError;
  final bool readOnly;
  final bool showVerticalLine;
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  final Function()? onTap;
  final TextInputType? keyboardType;
  final FocusNode? focus;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;

  const TextFieldWidget({
    required this.hintText,
    super.key,
    this.verticalPadding,
    this.suffixIcon,
    this.onSuffix,
    this.globalKey,
    this.validator,
    this.keyboardType,
    this.readOnly = false,
    this.isError = false,
    this.obscure = false,
    this.controller,
    this.preffixIcon,
    this.onPreffix,
    this.inputFormatters,
    this.onChanged,
    this.focus,
    this.onTap,
    this.showVerticalLine = true,
    this.borderColor,
    this.onSubmitted,
    this.bgColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      config: KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
        keyboardBarColor: Colors.grey[200],
        nextFocus: false,
        actions: focus != null
            ? [
                KeyboardActionsItem(
                  toolbarButtons: [
                    (_) => GestureDetector(
                          onTap: () => focus?.unfocus(),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Text(
                              S.current.done,
                              style: AppTextStyles.p1
                                  .copyWith(color: AppColors.primary),
                            ),
                          ),
                        ),
                  ],
                  focusNode: focus!,
                ),
              ]
            : [],
      ),
      disableScroll: true,
      child: TextFormField(
        key: globalKey,
        style: AppTextStyles.p2.copyWith(color: textColor ?? AppColors.light),
        controller: controller,
        validator: validator,
        obscureText: obscure,
        onChanged: onChanged,
        onFieldSubmitted: onSubmitted,
        readOnly: readOnly,
        focusNode: focus,
        keyboardType: keyboardType,
        inputFormatters: inputFormatters,
        onTap: onTap,
        decoration: InputDecoration(
          filled: isError || bgColor != null,
          fillColor: bgColor ?? AppColors.redBg,
          hintText: hintText,
          contentPadding: EdgeInsets.fromLTRB(
            16.w,
            verticalPadding ?? 12.h,
            19.3.w,
            verticalPadding ?? 12.h,
          ),
          prefixIcon: preffixIcon != null
              ? InkWell(
                  onTap: onPreffix,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Wrap(
                      spacing: 8.w,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      runAlignment: WrapAlignment.center,
                      children: [
                        preffixIcon!,
                        if (showVerticalLine)
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: Container(
                              color: isError
                                  ? AppColors.primary
                                  : AppColors.darkGrey1,
                              height: 16.h,
                              width: 1.w,
                            ),
                          ),
                      ],
                    ),
                  ),
                )
              : null,
          suffixIcon: suffixIcon != null
              ? InkWell(
                  onTap: onSuffix,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 18.87.w, 0),
                    child: suffixIcon,
                  ),
                )
              : null,
          isDense: true,
          hintStyle: AppTextStyles.p2.copyWith(color: AppColors.lightGrey),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: isError
                  ? AppColors.red
                  : borderColor == null
                      ? (readOnly ? AppColors.darkGrey2 : AppColors.lightGrey)
                      : borderColor!,
            ),
            borderRadius: BorderRadius.circular(12.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.circular(12.w),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.circular(12.w),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: isError
                  ? AppColors.red
                  : borderColor == null
                      ? AppColors.darkGrey2
                      : borderColor!,
            ),
            borderRadius: BorderRadius.circular(12.w),
          ),
        ),
      ),
    );
  }
}
