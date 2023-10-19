import 'package:json_annotation/json_annotation.dart';

import '../../core/constants/app_typedefs.dart';
import '../entities/userEntity.dart';

part 'edit_user_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class EditUserDto {
  EditUserDto({
    this.username,
    this.phoneCountryCode,
    this.phone,
    this.country,
    this.countryIsoCode,
    this.city,
  });

  factory EditUserDto.fromDomain(UserEntity entity) => EditUserDto(
        username: entity.username,
        phone: entity.phone,
        city: entity.city,
        country: entity.country,
        phoneCountryCode: entity.phoneCountryCode,
      );

  factory EditUserDto.fromJson(DataMap json) => _$EditUserDtoFromJson(json);

  final String? city;
  final String? country;
  final String? countryIsoCode;
  final String? phone;
  final String? phoneCountryCode;
  final String? username;

  DataMap toJson() => _$EditUserDtoToJson(this);
}
