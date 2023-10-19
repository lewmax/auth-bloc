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
import '../widgets/social_section_buttons.dart';
import 'bloc/sign_up_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordRepeatController;
  late final GlobalKey<FormState> formKey;
  late final SignUpBloc _bloc;

  final _navigator = GlobalNavigator();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordRepeatController = TextEditingController();
    formKey = GlobalKey<FormState>();
    _bloc = SignUpBloc(authRepository: context.read());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _bloc,
      child: BlocListener<SignUpBloc, SignUpState>(
        listenWhen: (prev, curr) => curr.maybeMap(
          orElse: () => true,
          error: (currError) => prev.maybeMap(
            orElse: () => true,
            error: (prevError) => prevError.message != currError.message,
          ),
        ),
        listener: (context, state) {
          _navigator.popDialogs();
          state.map(
            initial: (_) => null,
            inProgress: (_) => _navigator.showLoadingDialog(),
            success: (_) => _navigator.pushNamed(
              AppRoutes.verification,
              args: VerificationSignUpArgs(
                password: passwordController.text,
                email: emailController.text,
              ),
            ),
            error: (state) => _navigator.errorDialog(state.message),
          );
        },
        child: BaseScreenWidget(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  context.loc.signUp.toUpperCase(),
                  style: AppTextStyles.h1,
                  textAlign: TextAlign.center,
                ),
                const Expanded(child: SizedBox()),
                TextFieldWidget(
                  hintText: context.loc.email,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  preffixIcon: SvgPicture.asset(Assets.icons.envelope),
                  validator: ValidationUtils.emailValidator,
                ),
                SizedBox(height: 16.h),
                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    return TextFieldWidget(
                      hintText: context.loc.password,
                      controller: passwordController,
                      preffixIcon: SvgPicture.asset(Assets.icons.lock),
                      obscure: !state.showPassword,
                      onSuffix: () =>
                          _bloc.add(const SignUpEvent.toggleShowPassword()),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset(
                          !state.showPassword
                              ? Assets.icons.eyeSlash
                              : Assets.icons.eye,
                        ),
                      ),
                      validator: ValidationUtils.passwordValidator,
                    );
                  },
                ),
                SizedBox(height: 16.h),
                BlocBuilder<SignUpBloc, SignUpState>(
                  builder: (context, state) {
                    return TextFieldWidget(
                      hintText: context.loc.repeatPassword,
                      controller: passwordRepeatController,
                      obscure: !state.showPasswordRepeat,
                      onSuffix: () => _bloc
                          .add(const SignUpEvent.toggleShowPasswordRepeat()),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(4),
                        child: SvgPicture.asset(
                          !state.showPasswordRepeat
                              ? Assets.icons.eyeSlash
                              : Assets.icons.eye,
                        ),
                      ),
                      preffixIcon: SvgPicture.asset(Assets.icons.lock),
                      validator: (s) => ValidationUtils.passwordValidator(
                        s,
                        v: passwordController.text,
                      ),
                    );
                  },
                ),
                SizedBox(height: 35.h),
                ButtonWidget(
                  color: AppColors.primary,
                  title: context.loc.signUp,
                  titleColor: AppColors.white,
                  height: 52.h,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      return _bloc.add(
                        SignUpEvent.signUp(
                          email: emailController.text,
                          password: passwordController.text,
                          passwordRepeat: passwordRepeatController.text,
                        ),
                      );
                    }
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        final email = emailController.text;
                        final pass1 = passwordController.text;
                        final pass2 = passwordRepeatController.text;
                        formKey.currentState?.reset();
                        emailController.text = email;
                        passwordController.text = pass1;
                        passwordRepeatController.text = pass2;
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(17.5.w, 40.h, 17.5.w, 40.h),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: const BoxDecoration(
                            gradient: AppColors.gradient1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 21.w, right: 21.w),
                        child: Text(
                          context.loc.or,
                          style: AppTextStyles.size18
                              .copyWith(color: AppColors.lightGrey),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          decoration: const BoxDecoration(
                            gradient: AppColors.gradient1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SocialSectionButtons(),
                SizedBox(height: 39.h),
                Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 5.w,
                  children: [
                    Text(
                      context.loc.alreadyHaveAnAccount,
                      style: AppTextStyles.p1Bold,
                    ),
                    InkWell(
                      onTap: () =>
                          _navigator.pushReplacementNamed(AppRoutes.signIn),
                      child: Text(
                        context.loc.signIn.toUpperCase(),
                        style: AppTextStyles.p1Semi
                            .copyWith(color: AppColors.primary),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
