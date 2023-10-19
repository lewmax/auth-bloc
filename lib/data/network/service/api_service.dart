import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';

import '../../../core/constants/app_typedefs.dart';
import '../../../models/dtos/auth_token_dto.dart';
import '../../../models/entities/auth_token_entity.dart';
import '../../../services/auth_storage_service.dart';
import 'api_constants.dart';
import 'network_response.dart';

enum ApiRequestType { get, post, put, delete, patch }

class ApiService {
  ApiService(this._baseUrl, {required AuthStorageService authStorageService})
      : _authStorageService = authStorageService;
  final _dio = Dio(BaseOptions(receiveDataWhenStatusError: true))
    ..interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

  final AuthStorageService _authStorageService;
  final String _baseUrl;

  //listen to get notified when token exprired and failed to refresh
  Stream<NetworkResponse<dynamic>> get dataResponse => _dataResponse.stream;
  final _dataResponse = StreamController<NetworkResponse>.broadcast();

  Future<NetworkResponse<T>> request<T>(
    String path, {
    required ApiRequestType type,
    dynamic body,
    bool attachToken = true,
    T Function(dynamic)? mapToJson,
  }) async {
    Response? response;
    try {
      String? tokenOrNull;
      if (attachToken) {
        tokenOrNull = await _checkTokenExpiry();
        if (tokenOrNull == null) {
          final resp = NetworkResponse<T>.error(403, 'Unauthorized');
          _dataResponse.add(resp);

          return resp;
        }
      }

      switch (type) {
        case ApiRequestType.get:
          response = await _dio.get(
            '$_baseUrl$path',
            options: Options(
              responseType: ResponseType.json,
              headers: _headers(tokenOrNull),
            ),
          );
        case ApiRequestType.post:
          response = await _dio.post(
            '$_baseUrl$path',
            data: body is FormData ? body : jsonEncode(body),
            options: Options(
              responseType: ResponseType.json,
              headers: _headers(tokenOrNull),
            ),
          );
        case ApiRequestType.put:
          response = await _dio.put(
            '$_baseUrl$path',
            data: jsonEncode(body),
            options: Options(
              responseType: ResponseType.json,
              headers: _headers(tokenOrNull),
            ),
          );
        case ApiRequestType.patch:
          response = await _dio.patch(
            '$_baseUrl$path',
            data: jsonEncode(body),
            options: Options(
              responseType: ResponseType.json,
              headers: _headers(tokenOrNull),
            ),
          );
        case ApiRequestType.delete:
          response = await _dio.delete(
            '$_baseUrl$path',
            data: jsonEncode(body),
            options: Options(
              responseType: ResponseType.json,
              headers: _headers(tokenOrNull),
            ),
          );
      }
    } on DioException catch (e) {
      if (e.response != null) {
        final error = e.response?.data?['detail'] as String? ?? '';
        final code = e.response?.data?['status'] ?? 400;

        final resp = NetworkResponse<T>.error(code, error);
        if (code == 403) _dataResponse.add(resp);

        return resp;
      }

      return NetworkResponse.error(500, e.message);
    }

    Object? mappedObj;
    if (mapToJson != null && response.data != null && response.data is Map) {
      mappedObj = mapToJson(response.data);
    }

    return NetworkResponse(
      mapToJson == null ? response.data as T : mappedObj as T,
      response.statusCode,
      null,
    );
  }

  DataMap? _headers(String? token) {
    return token == null ? null : {'Authorization': 'Bearer $token'};
  }

  Future<String?> _checkTokenExpiry() async {
    AuthTokenEntity? tokenOrNull = await _authStorageService.getToken();
    if (tokenOrNull == null) return null;
    if (tokenOrNull.expired) {
      final response = await _dio.post(
        '$_baseUrl${ApiConstants.refresh(tokenOrNull.refreshToken)}',
        options: Options(responseType: ResponseType.json),
      );
      if (response.data != null) {
        tokenOrNull = AuthTokenDto.fromMap(response.data as DataMap);
        _authStorageService.updateToken(tokenOrNull);
      }
    }

    return tokenOrNull.accessToken;
  }
}
