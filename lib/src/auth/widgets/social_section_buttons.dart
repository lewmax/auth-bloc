import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/theme/assets.gen.dart';
import '../../../services/auth_bloc/auth_bloc.dart';
import '../sign_in/widgets/social_button.dart';

class SocialSectionButtons extends StatelessWidget {
  const SocialSectionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 24.w,
      children: [
        SocialButtonWidget(
          icon: Assets.icons.google,
          onTap: () => context.read<AuthBloc>().add(
                const AuthEvent.socialLogin(method: SocialLoginMethod.google),
              ),
        ),
        SocialButtonWidget(
          icon: Assets.icons.facebook,
          onTap: () => context.read<AuthBloc>().add(
                const AuthEvent.socialLogin(
                  method: SocialLoginMethod.facebook,
                ),
              ),
        ),
      ],
    );
  }
}
