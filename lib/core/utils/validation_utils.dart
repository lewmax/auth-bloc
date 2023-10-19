import '../../generated/l10n.dart';

abstract class ValidationUtils {
  static bool _isValidEmail(String value) =>
      RegExp(
        r'^[a-z0-9!#$%&*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$',
      ).hasMatch(value) &&
      value.length <= 320 &&
      value.split('@')[1].length <= 20;

  static bool _isValidPhone(String value) =>
      RegExp('[0-9]*').hasMatch(value) && value.length > 4 && value.length < 16;

  static bool _isValidName(String value) =>
      RegExp(r'^(?=[a-zA-Z0-9._ ]{3,20}$)(?!.*[_. ]{2})[^_. ].*[^_. ]$')
          .hasMatch(value);

  static bool _isValidPassword(String value) => value.length > 5;

  static String? emailValidator(String? s) =>
      s != null && _isValidEmail(s) ? null : S.current.invalidEmail;

  static String? phoneValidator(String? s) =>
      s != null && _isValidPhone(s) ? null : S.current.invalidPhone;

  static String? nameValidator(String? s) =>
      s != null && _isValidName(s) ? null : S.current.invalidName;

  static String? cityValidator(String? s) =>
      s != null && s.isNotEmpty ? null : S.current.invalidCity;

  static String? passwordValidator(String? s, {String? v}) =>
      s == null || !_isValidPassword(s)
          ? S.current.invalidPassword
          : v == null
              ? null
              : s == v
                  ? null
                  : "Passwords don't match";
}
