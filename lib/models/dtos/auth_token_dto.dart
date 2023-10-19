import 'dart:convert';

import 'package:jwt_decoder/jwt_decoder.dart';

import '../../core/constants/app_typedefs.dart';
import '../entities/auth_token_entity.dart';

class AuthTokenDto extends AuthTokenEntity {
  AuthTokenDto({required super.accessToken, required super.refreshToken});

  factory AuthTokenDto.fromJson(String source) =>
      AuthTokenDto.fromMap(json.decode(source) as DataMap);

  factory AuthTokenDto.fromMap(DataMap map) {
    return AuthTokenDto(
      accessToken: map['accessToken'] as String,
      refreshToken: map['refreshToken'] as String,
    );
  }

  DataMap toMap() {
    return {'accessToken': accessToken, 'refreshToken': refreshToken};
  }

  String toJson() => json.encode(toMap());

  AuthTokenEntity toDomain() =>
      AuthTokenEntity(accessToken: accessToken, refreshToken: refreshToken);

  factory AuthTokenDto.fromDomain(AuthTokenEntity entity) => AuthTokenDto(
        accessToken: entity.accessToken,
        refreshToken: entity.refreshToken,
      );
}
