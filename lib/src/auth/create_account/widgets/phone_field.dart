import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/app_text_styles.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/validation_utils.dart';
import '../../../../widgets/textfield.dart';
import '../bloc/create_account_bloc.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phone;
  final TextEditingController searchPhoneCode;

  const PhoneField({
    required this.phone,
    required this.searchPhoneCode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CreateAccountBloc _bloc = context.read();

    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (prev, curr) =>
          prev.phoneCountryCode != curr.phoneCountryCode ||
          prev.isCountriesCodeOpen != curr.isCountriesCodeOpen,
      builder: (context, state) {
        final Widget preffix = Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Text(
              state.phoneCountryCode,
              style: AppTextStyles.p2.copyWith(color: AppColors.primary),
            ),
            Icon(
              state.isCountriesCodeOpen ? Icons.expand_less : Icons.expand_more,
              color: AppColors.primary,
              size: 30,
            ),
          ],
        );

        return state.isCountriesCodeOpen
            ? TextFieldWidget(
                preffixIcon: preffix,
                onPreffix: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  _bloc.add(const CreateAccountEvent.toggleCountryCodes());
                },
                controller: searchPhoneCode,
                hintText: context.loc.search,
                onChanged: (s) => _bloc
                    .add(CreateAccountEvent.searchCountryCode(countryCode: s)),
                borderColor:
                    state.phoneCountryCode.isEmpty ? null : AppColors.lightGrey,
              )
            : TextFieldWidget(
                preffixIcon: preffix,
                onPreffix: () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  _bloc.add(const CreateAccountEvent.toggleCountryCodes());
                },
                hintText: '55-000-0000',
                controller: phone,
                inputFormatters: [
                  MaskTextInputFormatter(mask: '##-###-####'),
                ],
                onChanged: (s) =>
                    _bloc.add(CreateAccountEvent.updatePhone(phone: s)),
                borderColor: state.phone.isEmpty ? null : AppColors.lightGrey,
                keyboardType: TextInputType.phone,
                validator: ValidationUtils.phoneValidator,
              );
      },
    );
  }
}
