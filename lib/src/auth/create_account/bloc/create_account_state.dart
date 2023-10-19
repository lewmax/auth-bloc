part of 'create_account_bloc.dart';

extension CreateAccountStateExt on CreateAccountState {
  bool get isButtonEnabled =>
      username.isNotEmpty && phone.isNotEmpty && isUserAgree;
}

@freezed
class CreateAccountState with _$CreateAccountState {
  @freezed
  const factory CreateAccountState.initial({
    required String phone,
    required String phoneCountryCode,
    required String country,
    required String city,
    required String username,
    required List<Country> countries,
    required List<Country> codeCountries,
    required bool isUserAgree,
    required bool isCountriesCodeOpen,
    required bool isCountriesListOpen,
  }) = _Initial;
  const factory CreateAccountState.inProgress({
    required String phone,
    required String phoneCountryCode,
    required String country,
    required String city,
    required String username,
    required bool isUserAgree,
    required List<Country> countries,
    required List<Country> codeCountries,
    required bool isCountriesCodeOpen,
    required bool isCountriesListOpen,
  }) = _InProgress;
  const factory CreateAccountState.error({
    required String phone,
    required String phoneCountryCode,
    required String country,
    required String city,
    required String username,
    required String message,
    required bool isUserAgree,
    required List<Country> countries,
    required List<Country> codeCountries,
    required bool isCountriesCodeOpen,
    required bool isCountriesListOpen,
  }) = _Error;
  const factory CreateAccountState.success({
    required String phone,
    required String phoneCountryCode,
    required String country,
    required String city,
    required String username,
    required bool isUserAgree,
    required List<Country> countries,
    required List<Country> codeCountries,
    required bool isCountriesCodeOpen,
    required bool isCountriesListOpen,
  }) = _Success;
}
