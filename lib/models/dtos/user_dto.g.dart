// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      username: json['username'] as String?,
      phone: json['phone'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phoneCountryCode: json['phoneCountryCode'] as String?,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      favoritesStationIds: (json['favoritesStationIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      authProvider:
          $enumDecodeNullable(_$AuthProviderEnumMap, json['authProvider']),
      defaultPrice: (json['defaultPrice'] as num?)?.toDouble(),
      tokens: (json['tokens'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      isEmailVerified: json['isEmailVerified'] as bool?,
      isBlocked: json['isBlocked'] as bool?,
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'phoneCountryCode': instance.phoneCountryCode,
      'email': instance.email,
      'favoritesStationIds': instance.favoritesStationIds,
      'id': instance.id,
      'imageUrl': instance.imageUrl,
      'phone': instance.phone,
      'username': instance.username,
      'authProvider': _$AuthProviderEnumMap[instance.authProvider],
      'defaultPrice': instance.defaultPrice,
      'tokens': instance.tokens,
      'isEmailVerified': instance.isEmailVerified,
      'isBlocked': instance.isBlocked,
    };

const _$AuthProviderEnumMap = {
  AuthProvider.INTERNAL: 'INTERNAL',
  AuthProvider.GOOGLE: 'GOOGLE',
  AuthProvider.FACEBOOK: 'FACEBOOK',
};
