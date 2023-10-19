import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../../../../core/constants/theme/assets.gen.dart';
import '../../../../core/utils/extensions.dart';

class DropDownWidget extends StatelessWidget {
  final List<String> values;
  final String value;
  final Function(String) onTap;

  const DropDownWidget({
    required this.values,
    required this.value,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.darkGrey2,
        ),
        color: AppColors.background,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.09),
            offset: const Offset(0, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: Column(children: [
        Expanded(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: values.isEmpty
                ? Container(
                    padding: EdgeInsets.only(left: 12.w),
                    width: double.infinity,
                    child: Text(
                      context.loc.noMatchesFound,
                      style: AppTextStyles.p2,
                    ),
                  )
                : RawScrollbar(
                    thumbColor: AppColors.primary,
                    thumbVisibility: true,
                    padding: EdgeInsets.zero,
                    radius: const Radius.circular(20),
                    thickness: 5,
                    child: ListView.separated(
                      itemCount: values.length,
                      separatorBuilder: (context, index) {
                        return const Divider(color: AppColors.darkGrey2);
                      },
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => onTap(values[index]),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 5, 14, 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      values[index],
                                      style: AppTextStyles.p2.copyWith(
                                        color: values[index] != value
                                            ? AppColors.lightGrey
                                            : null,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: values[index] == value,
                                    child: SvgPicture.asset(Assets.icons.check),
                                  ),
                                ]),
                          ),
                        );
                      },
                    ),
                  ),
          ),
        ),
      ]),
    );
  }
}
