import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

import '../dtos/login_dto.dart';

class UserEntity extends Equatable {
  const UserEntity({
    required this.username,
    required this.phone,
    required this.city,
    required this.country,
    required this.email,
    required this.phoneCountryCode,
    required this.id,
    required this.imageUrl,
    required this.favoritesStationIds,
    required this.authProvider,
    required this.defaultPrice,
    required this.tokens,
    required this.isEmailVerified,
    required this.isBlocked,
  });

  final String? city;
  final String? country;
  final String? phoneCountryCode;
  final String? email;
  final List<String>? favoritesStationIds;
  final String id;
  final String? imageUrl;
  final String? phone;
  final String? username;
  final AuthProvider? authProvider;
  final double? defaultPrice;
  final List<Map>? tokens;
  final bool? isEmailVerified;
  final bool? isBlocked;

  @override
  List<Object?> get props => [
        city,
        country,
        phoneCountryCode,
        email,
        favoritesStationIds,
        id,
        imageUrl,
        phone,
        username,
        authProvider,
        defaultPrice,
        tokens,
        isEmailVerified,
        isBlocked,
      ];

  UserEntity copyWith({
    ValueGetter<String?>? city,
    ValueGetter<String?>? country,
    ValueGetter<String?>? phoneCountryCode,
    ValueGetter<String?>? email,
    ValueGetter<List<String>?>? favoritesStationIds,
    String? id,
    ValueGetter<String?>? imageUrl,
    ValueGetter<String?>? phone,
    ValueGetter<String?>? username,
    ValueGetter<AuthProvider?>? authProvider,
    ValueGetter<double?>? defaultPrice,
    ValueGetter<List<Map>?>? tokens,
    ValueGetter<bool?>? isEmailVerified,
    ValueGetter<bool?>? isBlocked,
  }) {
    return UserEntity(
      city: city != null ? city() : this.city,
      country: country != null ? country() : this.country,
      phoneCountryCode:
          phoneCountryCode != null ? phoneCountryCode() : this.phoneCountryCode,
      email: email != null ? email() : this.email,
      favoritesStationIds: favoritesStationIds != null
          ? favoritesStationIds()
          : this.favoritesStationIds,
      id: id ?? this.id,
      imageUrl: imageUrl != null ? imageUrl() : this.imageUrl,
      phone: phone != null ? phone() : this.phone,
      username: username != null ? username() : this.username,
      authProvider: authProvider != null ? authProvider() : this.authProvider,
      defaultPrice: defaultPrice != null ? defaultPrice() : this.defaultPrice,
      tokens: tokens != null ? tokens() : this.tokens,
      isEmailVerified:
          isEmailVerified != null ? isEmailVerified() : this.isEmailVerified,
      isBlocked: isBlocked != null ? isBlocked() : this.isBlocked,
    );
  }
}

enum AuthProvider {
  @JsonValue('INTERNAL')
  INTERNAL,
  @JsonValue('GOOGLE')
  GOOGLE,
  @JsonValue('FACEBOOK')
  FACEBOOK,
}
