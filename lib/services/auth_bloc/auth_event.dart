part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.getUser({required bool isInitial}) = _GetUser;
  const factory AuthEvent.loginWithCreds({
    required String email,
    required String password,
  }) = _LoginWithCreds;
  const factory AuthEvent.socialLogin({required SocialLoginMethod method}) =
      _SocialLogin;
  const factory AuthEvent.logout() = _Logout;
  const factory AuthEvent.deleteAccount(String userId) = _DeleteAccount;
}

enum SocialLoginMethod {
  google,
  facebook;

  bool get isGoogle => this == google;
}
  // const factory AuthEvent.signUp({required String email}) = _SignUp;
  // const factory AuthEvent.createAccount({
  //   required String username,
  //   required String phone,
  //   required String phoneCountryCode,
  //   required String country,
  //   required String city,
  // }) = _CreateAccount;
  // const factory AuthEvent.verifyCodeWhenSignUp({
  //   required String email,
  //   required String password,
  //   required String code,
  // }) = _VerifyCodeWhenSignUp;
  // const factory AuthEvent.verifyCodeAfterForgetPassword({
  //   required String email,
  //   required String code,
  // }) = _VerifyCodeAfterForgetPassword;
  // const factory AuthEvent.resendCode({required String email}) = _ResendCode;
  // const factory AuthEvent.forgotPassword({required String email}) =
  //     _ForgotPassword;
  // const factory AuthEvent.resetPassword({
  //   required String email,
  //   required String password,
  //   required String code,
  // }) = _ResetPassword;



