// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserDto _$EditUserDtoFromJson(Map<String, dynamic> json) => EditUserDto(
      username: json['username'] as String?,
      phoneCountryCode: json['phoneCountryCode'] as String?,
      phone: json['phone'] as String?,
      country: json['country'] as String?,
      countryIsoCode: json['countryIsoCode'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$EditUserDtoToJson(EditUserDto instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'countryIsoCode': instance.countryIsoCode,
      'phone': instance.phone,
      'phoneCountryCode': instance.phoneCountryCode,
      'username': instance.username,
    };
