import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/routing/app_routes.dart';
import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../../../core/constants/theme/assets.gen.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/global_navigator.dart';
import '../../../core/utils/validation_utils.dart';
import '../../../models/navigation_args/create_password_args.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/button.dart';
import '../../../widgets/textfield.dart';
import 'bloc/create_password_bloc.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  late final TextEditingController passwordController;
  late final TextEditingController repeatPasswordController;
  late final GlobalKey<FormState> formKey;
  late final CreatePasswordBloc _bloc;

  ///inititialized in [didChangeDependencies]
  late CreatePasswordArgs createPasswordArgs;

  final _navigator = GlobalNavigator();

  @override
  void initState() {
    passwordController = TextEditingController();
    repeatPasswordController = TextEditingController();
    formKey = GlobalKey<FormState>();
    _bloc = CreatePasswordBloc(authRepository: context.read());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _bloc,
      child: BlocListener<CreatePasswordBloc, CreatePasswordState>(
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
            success: (_) =>
                _navigator.pushNamed(AppRoutes.confirmed, args: true),
            error: (state) => _navigator.errorDialog(state.message),
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
                  context.loc.createNewPassword.toUpperCase(),
                  style: AppTextStyles.h1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 64.h),
                _password(),
                SizedBox(height: 16.h),
                _passwordRepeat(),
                SizedBox(height: 95.h),
                ButtonWidget(
                  color: AppColors.primary,
                  title: context.loc.createPassword,
                  titleColor: AppColors.white,
                  height: 52.h,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      return _bloc.add(
                        CreatePasswordEvent.resetPassword(
                          email: createPasswordArgs.email,
                          password: passwordController.text,
                          passwordReapeat: repeatPasswordController.text,
                          code: createPasswordArgs.code,
                        ),
                      );
                    }
                    Future.delayed(
                      const Duration(seconds: 1),
                      () {
                        final pass1 = passwordController.text;
                        final pass2 = repeatPasswordController.text;
                        formKey.currentState?.reset();
                        passwordController.text = pass1;
                        repeatPasswordController.text = pass2;
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BlocBuilder<CreatePasswordBloc, CreatePasswordState> _password() {
    return BlocBuilder<CreatePasswordBloc, CreatePasswordState>(
      builder: (context, state) {
        return TextFieldWidget(
          hintText: context.loc.password,
          controller: passwordController,
          preffixIcon: SvgPicture.asset(Assets.icons.lock),
          obscure: !state.showPassword,
          onSuffix: () =>
              _bloc.add(const CreatePasswordEvent.toggleShowPassword()),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(
              !state.showPassword ? Assets.icons.eyeSlash : Assets.icons.eye,
            ),
          ),
          validator: ValidationUtils.passwordValidator,
        );
      },
    );
  }

  BlocBuilder<CreatePasswordBloc, CreatePasswordState> _passwordRepeat() {
    return BlocBuilder<CreatePasswordBloc, CreatePasswordState>(
      builder: (context, state) {
        return TextFieldWidget(
          hintText: context.loc.repeatPassword,
          controller: repeatPasswordController,
          obscure: !state.showPasswordRepeat,
          onSuffix: () =>
              _bloc.add(const CreatePasswordEvent.toggleShowPasswordRepeat()),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(4),
            child: SvgPicture.asset(
              !state.showPasswordRepeat
                  ? Assets.icons.eyeSlash
                  : Assets.icons.eye,
            ),
          ),
          preffixIcon: SvgPicture.asset(Assets.icons.lock),
          validator: (s) =>
              ValidationUtils.passwordValidator(s, v: passwordController.text),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    createPasswordArgs =
        ModalRoute.of(context)!.settings.arguments as CreatePasswordArgs;
    super.didChangeDependencies();
  }
}
