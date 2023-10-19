import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/constants/app_typedefs.dart';

part 'login_dto.freezed.dart';

@freezed
class LoginDto with _$LoginDto {
  const factory LoginDto.byEmail({
    required String login,
    required String password,
  }) = _Internal;
  const factory LoginDto.google({required String socialToken}) = _Google;
  const factory LoginDto.facebook({required String socialToken}) = _Facebook;
}

extension LoginDtoExt on LoginDto {
  DataMap toMap() {
    return map(
      byEmail: (byEmail) => {
        'credentials': {
          'id': byEmail.login,
          'secret': byEmail.password,
        },
        'authProvider': 'INTERNAL',
      },
      google: (google) => {
        'credentials': {'secret': google.socialToken},
        'authProvider': 'GOOGLE',
      },
      facebook: (facebook) => {
        'credentials': {'secret': facebook.socialToken},
        'authProvider': 'FACEBOOK',
      },
    );
  }

  String toJson() => jsonEncode(toMap());
}
