import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../../../core/constants/theme/assets.gen.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/app_routes.dart';
import '../../../core/utils/validation_utils.dart';
import '../../../services/auth_bloc/auth_bloc.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/button.dart';
import '../../../widgets/textfield.dart';
import '../widgets/social_section_buttons.dart';
import 'bloc/sign_in_bloc.dart';
import 'widgets/not_have_account_section.dart';
import 'widgets/or_row_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> formKey;
  late final SignInBloc bloc;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
    bloc = SignInBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => bloc,
      child: BaseScreenWidget(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                context.loc.signIn.toUpperCase(),
                style: AppTextStyles.h1,
                textAlign: TextAlign.center,
              ),
              const Expanded(child: SizedBox()),
              _email(context),
              SizedBox(height: 16.h),
              _password(),
              _forgotPassword(context),
              _signinBtn(context),
              const OrRowWidget(),
              const SocialSectionButtons(),
              SizedBox(height: 39.h),
              const NotHaveAccountSection(),
            ],
          ),
        ),
      ),
    );
  }

  ButtonWidget _signinBtn(BuildContext context) {
    return ButtonWidget(
      color: AppColors.primary,
      title: context.loc.signIn,
      titleColor: AppColors.white,
      height: 52.h,
      onTap: () {
        if (formKey.currentState!.validate()) {
          return context.read<AuthBloc>().add(
                AuthEvent.loginWithCreds(
                  email: emailController.text,
                  password: passwordController.text,
                ),
              );
        }
        Future.delayed(
          const Duration(seconds: 1),
          () {
            final email = emailController.text;
            final pass = passwordController.text;
            formKey.currentState?.reset();
            emailController.text = email;
            passwordController.text = pass;
          },
        );
      },
    );
  }

  Padding _forgotPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.h, bottom: 40.h),
      child: InkWell(
        onTap: () => Navigator.of(context).pushNamed(AppRoutes.forgotPassword),
        child: Text(
          context.loc.forgotPassword,
          style: AppTextStyles.p2.copyWith(color: AppColors.lightGrey),
        ),
      ),
    );
  }

  BlocBuilder<SignInBloc, SignInState> _password() {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return TextFieldWidget(
          hintText: context.loc.password,
          controller: passwordController,
          obscure: !state.showPassword,
          onSuffix: () => bloc.add(const SignInEvent.toggleShowPassword()),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(
              width: 1,
              !state.showPassword ? Assets.icons.eyeSlash : Assets.icons.eye,
            ),
          ),
          preffixIcon: SvgPicture.asset(Assets.icons.lock),
          validator: ValidationUtils.passwordValidator,
        );
      },
    );
  }

  TextFieldWidget _email(BuildContext context) {
    return TextFieldWidget(
      hintText: context.loc.email,
      keyboardType: TextInputType.emailAddress,
      controller: emailController,
      preffixIcon: SvgPicture.asset(Assets.icons.envelope),
      validator: ValidationUtils.emailValidator,
    );
  }
}
