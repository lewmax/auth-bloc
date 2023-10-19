import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../../../../core/utils/extensions.dart';
import '../bloc/create_account_bloc.dart';
import 'check_box_widget.dart';

class AgreeSection extends StatelessWidget {
  const AgreeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context
          .read<CreateAccountBloc>()
          .add(const CreateAccountEvent.toggleUserAgree()),
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
        child: Wrap(
            spacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              BlocBuilder<CreateAccountBloc, CreateAccountState>(
                buildWhen: (prev, curr) => prev.isUserAgree != curr.isUserAgree,
                builder: (context, state) {
                  return CheckBoxWidget(
                    value: state.isUserAgree,
                    onTap: (_) => context
                        .read<CreateAccountBloc>()
                        .add(const CreateAccountEvent.toggleUserAgree()),
                  );
                },
              ),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: context.loc.agreeToTheProccessing,
                    style: AppTextStyles.p2,
                  ),
                  TextSpan(
                    text: context.loc.personalData,
                    style: AppTextStyles.p2.copyWith(
                      color: AppColors.secondary,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ]),
              ),
            ]),
      ),
    );
  }
}
