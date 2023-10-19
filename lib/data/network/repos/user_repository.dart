import 'dart:io';
import 'package:dio/dio.dart';

import '../../../core/constants/app_typedefs.dart';
import '../../../models/dtos/edit_user_dto.dart';
import '../../../models/dtos/user_dto.dart';
import '../service/api_constants.dart';
import '../service/api_service.dart';
import '../service/network_response.dart';

abstract class IUserRepository {
  Future<NetworkResponse<UserDto>> editUser(EditUserDto userDto);
  Future<NetworkResponse<UserDto>> getUser();
  Future<NetworkResponse<UserDto>> postFavorite(String stationId);
  Future<NetworkResponseVoid> deleteFavorite(String stationId);
  Future<NetworkResponse<UserDto>> updatePhoto(String path);
  Future<NetworkResponseVoid> deletePhoto();
  Future<NetworkResponseVoid> deleteUser(String userId);
}

class UserRepositoryImpl implements IUserRepository {
  UserRepositoryImpl(this._api);

  final ApiService _api;

  @override
  Future<NetworkResponse<UserDto>> editUser(EditUserDto userDto) async {
    return _api.request(
      ApiConstants.me,
      body: userDto.toJson(),
      type: ApiRequestType.put,
      mapToJson: (json) => UserDto.fromJson(json as DataMap),
    );
  }

  @override
  Future<NetworkResponse<UserDto>> getUser() async {
    return _api.request(
      ApiConstants.me,
      type: ApiRequestType.get,
      mapToJson: (json) => UserDto.fromJson(json as DataMap),
    );
  }

  @override
  Future<NetworkResponse<UserDto>> postFavorite(String stationId) async {
    return _api.request(
      ApiConstants.favoriteProduct(stationId),
      type: ApiRequestType.post,
      mapToJson: (json) => UserDto.fromJson(json as DataMap),
    );
  }

  @override
  Future<NetworkResponseVoid> deleteFavorite(String stationId) async {
    return _api.request(
      ApiConstants.favoriteProduct(stationId),
      type: ApiRequestType.delete,
    );
  }

  @override
  Future<NetworkResponse<UserDto>> updatePhoto(String path) async {
    final File file = File(path);
    final fileName = file.path.split('/').last;
    final FormData formData = FormData.fromMap({
      'image': await MultipartFile.fromFile(file.path, filename: fileName),
    });

    return _api.request(
      ApiConstants.image,
      body: formData,
      type: ApiRequestType.post,
      mapToJson: (json) => UserDto.fromJson(json as DataMap),
    );
  }

  @override
  Future<NetworkResponseVoid> deletePhoto() async {
    return _api.request(ApiConstants.file, type: ApiRequestType.delete);
  }

  @override
  Future<NetworkResponseVoid> deleteUser(String userId) async {
    return _api.request(
      ApiConstants.me,
      type: ApiRequestType.delete,
      body: {'userId': userId},
    );
  }
}
