import '../../../core/constants/app_typedefs.dart';
import '../../../models/dtos/auth_token_dto.dart';
import '../../../models/dtos/login_dto.dart';
import '../service/api_constants.dart';
import '../service/api_service.dart';
import '../service/network_response.dart';

enum Appointment { EMAIL_VERIFICATION, FORGOT_PASSWORD }

abstract class IAuthRepository {
  Future<NetworkResponseVoid> signUp(String email);
  Future<NetworkResponseVoid> forgotPassword(String email);
  Future<NetworkResponseVoid> resendCode(String email);
  Future<NetworkResponseVoid> logout();
  Future<NetworkResponseVoid> verifyConfirmCode({
    required String email,
    required String confirmationCode,
    required Appointment appointment,
  });
  Future<NetworkResponse<AuthTokenDto>> setPassword({
    required String email,
    required String password,
    required String confirmationCode,
    required Appointment appointment,
  });
  Future<NetworkResponse<AuthTokenDto>> login(LoginDto loginDto);
}

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl(this._api);

  final ApiService _api;

  @override
  Future<NetworkResponseVoid> signUp(String email) async {
    return _api.request(
      ApiConstants.signUp,
      type: ApiRequestType.post,
      attachToken: false,
      body: {'email': email},
    );
  }

  @override
  Future<NetworkResponseVoid> forgotPassword(String email) async {
    return _api.request(
      ApiConstants.forgotPassword,
      type: ApiRequestType.post,
      attachToken: false,
      body: {'email': email},
    );
  }

  @override
  Future<NetworkResponseVoid> resendCode(String email) async {
    return _api.request(
      ApiConstants.resendCode,
      type: ApiRequestType.post,
      attachToken: false,
      body: {'email': email},
    );
  }

  @override
  Future<NetworkResponseVoid> logout() async {
    return _api.request(ApiConstants.logout, type: ApiRequestType.post);
  }

  @override
  Future<NetworkResponseVoid> verifyConfirmCode({
    required String email,
    required String confirmationCode,
    required Appointment appointment,
  }) async {
    return _api.request(
      ApiConstants.check,
      type: ApiRequestType.post,
      attachToken: false,
      body: {
        'email': email,
        'confirmationCode': confirmationCode,
        'appointment': appointment.name,
      },
    );
  }

  @override
  Future<NetworkResponse<AuthTokenDto>> setPassword({
    required String email,
    required String password,
    required String confirmationCode,
    required Appointment appointment,
  }) async {
    return _api.request(
      ApiConstants.setPassword,
      type: ApiRequestType.post,
      attachToken: false,
      body: {
        'email': email,
        'password': password,
        'confirmationCode': confirmationCode,
        'appointment': appointment.name,
      },
      mapToJson: (json) => AuthTokenDto.fromMap(json as DataMap),
    );
  }

  @override
  Future<NetworkResponse<AuthTokenDto>> login(LoginDto loginDto) async {
    return _api.request(
      ApiConstants.login,
      type: ApiRequestType.post,
      body: loginDto.toMap(),
      attachToken: false,
      mapToJson: (json) => AuthTokenDto.fromMap(json as DataMap),
    );
  }
}
