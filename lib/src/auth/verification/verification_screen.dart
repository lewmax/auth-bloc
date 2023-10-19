import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../core/utils/routing/app_routes.dart';
import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/global_navigator.dart';
import '../../../core/utils/time_utils.dart';
import '../../../models/navigation_args/create_password_args.dart';
import '../../../models/navigation_args/verification_args.dart';
import '../../../services/auth_bloc/auth_bloc.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/button.dart';
import 'bloc/verify_bloc.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  ///initialize in [didChangeDependencies]
  late final VerificationArgs _verificationData;
  late final VerifyBloc _verifyBloc;

  final _navigator = GlobalNavigator();

  @override
  void initState() {
    _verifyBloc = VerifyBloc(
      authRepository: context.read(),
      authStorageService: context.read(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _verifyBloc,
      child: BlocListener<VerifyBloc, VerifyState>(
        listener: (context, state) {
          _navigator.popDialogs();
          state.map(
            initial: (_) => null,
            inProgress: (state) => _navigator.showLoadingDialog(),
            error: (state) => _navigator.errorDialog(state.message),
            successVerifyCode: (state) {
              if (_verificationData case VerificationSignUpArgs _) {
                return context
                    .read<AuthBloc>()
                    .add(const AuthEvent.getUser(isInitial: true));
              }
              _navigator.pushReplacementNamed(
                AppRoutes.createPassword,
                args: CreatePasswordArgs(
                  email: _verificationData.email,
                  code: state.code,
                ),
              );
            },
          );
        },
        child: BaseScreenWidget(
          isArrowVisible: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                context.loc.verification.toUpperCase(),
                style: AppTextStyles.h1,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 116.h),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${context.loc.enterCode} ',
                      style: AppTextStyles.p1.copyWith(color: AppColors.light),
                    ),
                    TextSpan(
                      text: _verificationData.email,
                      style:
                          AppTextStyles.p1.copyWith(color: AppColors.primary),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 42.h),
              _codeField(),
              _verifyBtn(),
              _resendBtn(context),
              SizedBox(height: 12.h),
              _timer(),
            ],
          ),
        ),
      ),
    );
  }

  Pinput _codeField() {
    return Pinput(
      onChanged: (code) => _verifyBloc.add(VerifyEvent.updateCode(code: code)),
      defaultPinTheme: PinTheme(
        width: 66.w,
        height: 60.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.darkGrey2),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 66.w,
        height: 60.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightGrey),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }

  Padding _verifyBtn() {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, bottom: 24.h),
      child: BlocBuilder<VerifyBloc, VerifyState>(
        builder: (context, state) {
          return ButtonWidget(
            color: AppColors.primary,
            title: context.loc.verify,
            isEnabled: state.code.length == 4,
            titleColor: AppColors.white,
            height: 52.h,
            onTap: () {
              if (_verificationData case VerificationSignUpArgs args) {
                return _verifyBloc.add(
                  VerifyEvent.verifyCodeWhenSignUp(
                    email: _verificationData.email,
                    password: args.password,
                    code: state.code,
                  ),
                );
              }
              _verifyBloc.add(
                VerifyEvent.verifyCodeAfterForgetPassword(
                  email: _verificationData.email,
                  code: state.code,
                ),
              );
            },
          );
        },
      ),
    );
  }

  InkWell _resendBtn(BuildContext context) {
    return InkWell(
      onTap: () {
        if (_verifyBloc.state.isTimerActivated) return;
        _verifyBloc.add(VerifyEvent.resendCode(email: _verificationData.email));
      },
      child: Text(
        context.loc.resendCode,
        style: AppTextStyles.size15Semi,
        textAlign: TextAlign.center,
      ),
    );
  }

  BlocBuilder<VerifyBloc, VerifyState> _timer() {
    return BlocBuilder<VerifyBloc, VerifyState>(
      builder: (context, state) {
        return Visibility(
          visible: state.isTimerActivated,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: context.loc.youCanResendCode,
                  style: AppTextStyles.size15Semi
                      .copyWith(color: AppColors.lightGrey),
                ),
                TextSpan(
                  text: TimeUtils.durationToString(state.secsLeft),
                  style: AppTextStyles.size15Semi
                      .copyWith(color: AppColors.secondary),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    _verificationData =
        (ModalRoute.of(context)?.settings.arguments as VerificationArgs)!;
    super.didChangeDependencies();
  }
}
