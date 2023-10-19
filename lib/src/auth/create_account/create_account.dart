import 'package:countries_utils/countries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/theme/app_colors.dart';
import '../../../core/constants/theme/app_text_styles.dart';
import '../../../core/constants/theme/assets.gen.dart';
import '../../../core/utils/extensions.dart';
import '../../../core/utils/routing/global_navigator.dart';
import '../../../services/auth_bloc/auth_bloc.dart';
import '../../../widgets/base_screen.dart';
import '../../../widgets/button.dart';
import '../../../widgets/my_dialog.dart';
import '../../../widgets/will_pop_scope.dart';
import 'bloc/create_account_bloc.dart';
import 'widgets/personal_info_widget.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = GlobalNavigator();

    return BlocProvider(
      create: (context) => CreateAccountBloc(
        userRepository: context.read(),
        countries: Countries.all(),
      ),
      child: BlocListener<CreateAccountBloc, CreateAccountState>(
        listenWhen: (prev, curr) => curr.maybeMap(
          orElse: () => true,
          error: (currError) => prev.maybeMap(
            orElse: () => true,
            error: (prevError) => prevError.message != currError.message,
          ),
        ),
        listener: (context, state) {
          navigator.popDialogs();
          state.map(
            initial: (_) => null,
            inProgress: (_) => navigator.showLoadingDialog(),
            success: (_) => context
                .read<AuthBloc>()
                .add(const AuthEvent.getUser(isInitial: true)),
            error: (state) => navigator.errorDialog(state.message),
          );
        },
        child: WillPopScopeWidget(
          onWillPop: () {
            onComeBack(context, navigator);

            return Future.value(false);
          },
          child: BaseScreenWidget(
            arrow: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () => onComeBack(context, navigator),
                  child: Container(
                    height: 48.h,
                    padding: EdgeInsets.only(
                      top: 11.h,
                      bottom: 12.h,
                      right: 20.w,
                    ),
                    child: SvgPicture.asset(Assets.icons.arrowLeft),
                  ),
                ),
                SizedBox(height: 48.h),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  context.loc.createAccount.toUpperCase(),
                  style: AppTextStyles.h1,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12.h),
                Text(
                  context.loc.personalInformation,
                  style: AppTextStyles.p1,
                ),
                SizedBox(height: 24.h),
                const PersonalInfoWidget(),
                SizedBox(height: 20.h),
                BlocBuilder<CreateAccountBloc, CreateAccountState>(
                  builder: (context, state) {
                    return ButtonWidget(
                      color: AppColors.primary,
                      title: context.loc.next,
                      titleColor: AppColors.white,
                      isEnabled: state.isButtonEnabled,
                      height: 52.h,
                      onTap: () => context
                          .read<CreateAccountBloc>()
                          .add(const CreateAccountEvent.createAccount()),
                    );
                  },
                ),
                SizedBox(height: 78.h),
                // StepsWidget(index: controller.page.value, count: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> onComeBack(BuildContext context, GlobalNavigator navigator) {
    return navigator.showDialog(
      MyDialog(
        title: context.loc.cancelRegistrationTitle,
        subtitle: context.loc.cancelRegistrationSubtitle,
        onTap1: () => navigator.popDialogs(),
        onTap2: () => context.read<AuthBloc>().add(const AuthEvent.logout()),
        button2: context.loc.logOut,
      ),
    );
  }
}
