import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bloc/create_account_bloc.dart';
import 'drop_down_widget.dart';

class CountryCodesDropdown extends StatelessWidget {
  const CountryCodesDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (prev, curr) =>
          prev.phoneCountryCode != curr.phoneCountryCode ||
          prev.codeCountries != curr.codeCountries ||
          prev.isCountriesCodeOpen != curr.isCountriesCodeOpen,
      builder: (context, state) {
        return Visibility(
          visible: state.isCountriesCodeOpen,
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            padding: EdgeInsets.only(top: 12.h),
            child: DropDownWidget(
              value: state.codeCountries
                      .firstWhereOrNull(
                        (e) =>
                            e.callingCodes?.contains(state.phoneCountryCode) ??
                            false,
                      )
                      ?.name ??
                  '',
              values: state.codeCountries.map((e) => e.name ?? '').toList(),
              onTap: (v) {
                FocusManager.instance.primaryFocus?.unfocus();
                context.read<CreateAccountBloc>()
                  ..add(const CreateAccountEvent.toggleCountryCodes())
                  ..add(
                    CreateAccountEvent.updatePhoneCode(
                      phoneCode: state.codeCountries
                              .where((element) => element.name == v)
                              .first
                              .callingCodes
                              ?.firstOrNull ??
                          '',
                    ),
                  );
              },
            ),
          ),
        );
      },
    );
  }
}
