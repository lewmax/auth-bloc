import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constants/theme/app_colors.dart';
import '../../../../core/constants/theme/assets.gen.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../core/utils/validation_utils.dart';
import '../../../../widgets/textfield.dart';
import '../bloc/create_account_bloc.dart';
import 'agree_section.dart';
import 'country_codes_dropdown.dart';
import 'drop_down_widget.dart';
import 'phone_field.dart';

class PersonalInfoWidget extends StatefulWidget {
  const PersonalInfoWidget({super.key});

  @override
  State<PersonalInfoWidget> createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  late final GlobalKey<FormState> formKey;
  late final CreateAccountBloc _bloc;
  late final TextEditingController phone;
  late final TextEditingController searchPhoneCode;

  @override
  void initState() {
    formKey = GlobalKey<FormState>();
    phone = TextEditingController();
    searchPhoneCode = TextEditingController();
    _bloc = context.read();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _nameField(),
          SizedBox(height: 16.h),
          PhoneField(phone: phone, searchPhoneCode: searchPhoneCode),
          const CountryCodesDropdown(),
          SizedBox(height: 12.h),
          _countryField(),
          _countriesDropDown(),
          SizedBox(height: 12.h),
          _cityField(),
          SizedBox(height: 20.h),
          const AgreeSection(),
        ],
      ),
    );
  }

  BlocBuilder<CreateAccountBloc, CreateAccountState> _nameField() {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (prev, curr) => prev.username != curr.username,
      builder: (context, state) {
        return TextFieldWidget(
          hintText: context.loc.yourName,
          borderColor: state.username.isEmpty ? null : AppColors.lightGrey,
          preffixIcon: SvgPicture.asset(Assets.icons.user),
          onChanged: (s) => _bloc.add(CreateAccountEvent.updateName(name: s)),
          validator: ValidationUtils.nameValidator,
        );
      },
    );
  }

  BlocBuilder<CreateAccountBloc, CreateAccountState> _countryField() {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (prev, curr) =>
          prev.isCountriesListOpen != curr.isCountriesListOpen ||
          prev.country != curr.country,
      builder: (context, state) {
        return TextFieldWidget(
          hintText: state.isCountriesListOpen
              ? context.loc.search
              : context.loc.selectCountry,
          preffixIcon: SvgPicture.asset(Assets.icons.country),
          onPreffix: () =>
              _bloc.add(const CreateAccountEvent.toggleCountriesList()),
          controller: state.isCountriesListOpen
              ? null
              : TextEditingController(text: state.country),
          onChanged: (s) =>
              _bloc.add(CreateAccountEvent.searchCountry(country: s)),
          borderColor: state.country.isEmpty ? null : AppColors.lightGrey,
          readOnly: !state.isCountriesListOpen,
          onTap: () =>
              _bloc.add(const CreateAccountEvent.toggleCountriesList()),
        );
      },
    );
  }

  BlocBuilder<CreateAccountBloc, CreateAccountState> _countriesDropDown() {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (prev, curr) =>
          prev.isCountriesListOpen != curr.isCountriesListOpen ||
          prev.country != curr.country ||
          prev.countries != curr.countries,
      builder: (context, state) {
        return Visibility(
          visible: state.isCountriesListOpen,
          child: Container(
            height: MediaQuery.of(context).size.height / 3,
            padding: EdgeInsets.only(top: 12.h),
            child: DropDownWidget(
              value: state.country,
              values: state.countries.map((e) => e.name ?? '').toList(),
              onTap: (v) {
                _bloc
                  ..add(const CreateAccountEvent.toggleCountriesList())
                  ..add(
                    CreateAccountEvent.updateCountry(
                      country: state.countries
                              .where((element) => element.name == v)
                              .first
                              .name ??
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

  BlocBuilder<CreateAccountBloc, CreateAccountState> _cityField() {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        return TextFieldWidget(
          hintText: context.loc.yourCity,
          validator: ValidationUtils.cityValidator,
          onChanged: (s) => _bloc.add(CreateAccountEvent.updateCity(city: s)),
          borderColor: state.city.isEmpty ? null : AppColors.lightGrey,
          preffixIcon: SvgPicture.asset(Assets.icons.location),
        );
      },
    );
  }
}
