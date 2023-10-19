import 'package:json_annotation/json_annotation.dart';

import '../../core/constants/app_typedefs.dart';
import '../entities/userEntity.dart';

part 'user_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class UserDto extends UserEntity {
  const UserDto({
    required super.username,
    required super.phone,
    required super.city,
    required super.country,
    required super.email,
    required super.phoneCountryCode,
    required super.id,
    required super.imageUrl,
    required super.favoritesStationIds,
    required super.authProvider,
    required super.defaultPrice,
    required super.tokens,
    required super.isEmailVerified,
    required super.isBlocked,
  });

  factory UserDto.fromJson(DataMap json) => _$UserDtoFromJson(json);

  DataMap toJson() => _$UserDtoToJson(this);

  UserEntity toDomain() => UserEntity(
        username: username,
        phone: phone,
        city: city,
        country: country,
        email: email,
        phoneCountryCode: phoneCountryCode,
        id: id,
        imageUrl: imageUrl,
        favoritesStationIds: favoritesStationIds,
        authProvider: authProvider,
        defaultPrice: defaultPrice,
        tokens: tokens,
        isEmailVerified: isEmailVerified,
        isBlocked: isBlocked,
      );

  factory UserDto.fromDomain(UserEntity entity) => UserDto(
        username: entity.username,
        phone: entity.phone,
        city: entity.city,
        country: entity.country,
        email: entity.email,
        phoneCountryCode: entity.phoneCountryCode,
        id: entity.id,
        favoritesStationIds: entity.favoritesStationIds,
        imageUrl: entity.imageUrl,
        authProvider: entity.authProvider,
        defaultPrice: entity.defaultPrice,
        tokens: entity.tokens,
        isEmailVerified: entity.isEmailVerified,
        isBlocked: entity.isBlocked,
      );
}
