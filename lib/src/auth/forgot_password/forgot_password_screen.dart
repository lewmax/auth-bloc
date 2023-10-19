import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../../../core/constants/theme/assets.gen.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/app_routes.dart';
import '../../../core/utils/routing/global_navigator.dart';
import '../../../core/utils/validation_utils.dart';
import '../../../models/navigation_args/verification_args.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/button.dart';
import '../../../widgets/textfield.dart';
import 'bloc/forgot_password_bloc.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late final TextEditingController emailController;
  late final GlobalKey<FormState> formKey;
  late final ForgotPasswordBloc _forgotPasswordBloc;

  final _navigator = GlobalNavigator();

  @override
  void initState() {
    emailController = TextEditingController();
    formKey = GlobalKey<FormState>();
    _forgotPasswordBloc = ForgotPasswordBloc(authRepository: context.read());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _forgotPasswordBloc,
      child: BlocListener<ForgotPasswordBloc, ForgotPasswordState>(
        listener: (context, state) {
          _navigator.popDialogs();
          state.map(
            initial: (_) => null,
            inProgress: (_) => _navigator.showLoadingDialog(),
            error: (state) => _navigator.errorDialog(state.message),
            success: (state) => _navigator.pushNamed(
              AppRoutes.verification,
              args: VerificationForgotPasswordArgs(email: emailController.text),
            ),
          );
        },
        child: BaseScreenWidget(
          isArrowVisible: true,
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  context.loc.forgotPassword.toUpperCase(),
                  style: AppTextStyles.h1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 64.h),
                Text(
                  context.loc.forgotSubtitle,
                  style: AppTextStyles.p1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40.h),
                _email(context),
                _resetBtn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _email(BuildContext context) {
    return SizedBox(
      height: 95.h,
      child: TextFieldWidget(
        hintText: context.loc.email,
        keyboardType: TextInputType.emailAddress,
        controller: emailController,
        preffixIcon: SvgPicture.asset(Assets.icons.envelope),
        validator: ValidationUtils.emailValidator,
      ),
    );
  }

  ButtonWidget _resetBtn(BuildContext context) {
    return ButtonWidget(
      color: AppColors.primary,
      title: context.loc.resetPassword,
      titleColor: AppColors.white,
      height: 52.h,
      onTap: () {
        if (formKey.currentState!.validate()) {
          return _forgotPasswordBloc.add(
            ForgotPasswordEvent.forgotPassword(email: emailController.text),
          );
        }
        Future.delayed(
          const Duration(seconds: 1),
          () {
            final email = emailController.text;
            formKey.currentState?.reset();
            emailController.text = email;
          },
        );
      },
    );
  }
}
