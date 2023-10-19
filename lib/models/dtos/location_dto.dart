import 'package:json_annotation/json_annotation.dart';

part 'location_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationDto {
  LocationDto(this.leftTop, this.rightBottom, {this.zoom});

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  final GeoPoint leftTop;
  final GeoPoint rightBottom;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final double? zoom;

  Map<String, dynamic> toJson() => _$LocationDtoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GeoPoint {
  GeoPoint({required this.latitude, required this.longitude});

  factory GeoPoint.fromJson(Map<String, dynamic> json) =>
      _$GeoPointFromJson(json);

  final double latitude;
  final double longitude;

  Map<String, dynamic> toJson() => _$GeoPointToJson(this);
}
