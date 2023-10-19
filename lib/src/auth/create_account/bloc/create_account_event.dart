part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.toggleUserAgree() = _ToggleUserAgree;
  const factory CreateAccountEvent.toggleCountryCodes() = _ToggleCountryCodes;
  const factory CreateAccountEvent.toggleCountriesList() = _ToggleCountriesList;
  const factory CreateAccountEvent.updateName({required String name}) =
      _UpdateName;
  const factory CreateAccountEvent.updatePhone({required String phone}) =
      _UpdatePhone;
  const factory CreateAccountEvent.updatePhoneCode({
    required String phoneCode,
  }) = _UpdatePhoneCode;
  const factory CreateAccountEvent.updateCountry({required String country}) =
      _UpdateCountry;
  const factory CreateAccountEvent.updateCity({required String city}) =
      _UpdateCity;
  const factory CreateAccountEvent.searchCountryCode({
    required String countryCode,
  }) = _SearchCountryCode;
  const factory CreateAccountEvent.searchCountry({required String country}) =
      _SearchCountry;
  const factory CreateAccountEvent.createAccount() = _CreateAccount;
}
