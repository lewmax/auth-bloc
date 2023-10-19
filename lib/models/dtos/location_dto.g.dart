// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => LocationDto(
      GeoPoint.fromJson(json['leftTop'] as Map<String, dynamic>),
      GeoPoint.fromJson(json['rightBottom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationDtoToJson(LocationDto instance) =>
    <String, dynamic>{
      'leftTop': instance.leftTop.toJson(),
      'rightBottom': instance.rightBottom.toJson(),
    };

GeoPoint _$GeoPointFromJson(Map<String, dynamic> json) => GeoPoint(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
    );

Map<String, dynamic> _$GeoPointToJson(GeoPoint instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
