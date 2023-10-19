import '../models/dtos/auth_token_dto.dart';
import '../models/entities/auth_token_entity.dart';
import 'storage_service.dart';

class AuthStorageService {
  AuthStorageService({required StorageService storageService})
      : _storageService = storageService;

  final StorageService _storageService;

  Future<AuthTokenEntity?> getToken() async {
    final tokenOrNull = await _storageService.getValue(StorageKeys.token);
    if (tokenOrNull == null) return null;

    return AuthTokenDto.fromJson(tokenOrNull).toDomain();
  }

  Future<bool> updateToken(AuthTokenEntity token) async {
    return _storageService.addValue(
        StorageKeys.token, AuthTokenDto.fromDomain(token).toJson());
  }

  Future<bool> removeToken() async {
    return _storageService.removeValue(StorageKeys.token);
  }
}
