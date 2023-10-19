import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/network/repos/auth_repository.dart';
import '../../data/network/repos/social_login_repository.dart';
import '../../data/network/repos/user_repository.dart';
import '../../data/network/service/api_service.dart';
import '../../generated/l10n.dart';
import '../../models/dtos/login_dto.dart';
import '../../models/entities/userEntity.dart';
import '../auth_storage_service.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required IAuthRepository authRepository,
    required IUserRepository userRepository,
    required AuthStorageService authStorageService,
    required SocialAuthRepository socialAuthRepository,
    required ApiService apiService,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        _authStorageService = authStorageService,
        _socialAuthRepository = socialAuthRepository,
        _apiService = apiService,
        super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) => event.map(
        getUser: (event) => _getUser(event, emit),
        loginWithCreds: (event) => _loginWithCreds(event, emit),
        socialLogin: (event) => _socialLogin(event, emit),
        logout: (event) => _logout(event, emit),
        deleteAccount: (event) => _deleteAccount(event, emit),
        // initialGetUser: (event) => _initialGetUser(event, emit),
        // signUp: (event) => _signUp(event, emit),
        // createAccount: (event) => _createAccount(event, emit),
        // verifyCodeWhenSignUp: (event) => _verifyCodeWhenSignUp(event, emit),
        // verifyCodeAfterForgetPassword: (event) =>
        // _verifyCodeAfterForgetPassword(event, emit),
        // resendCode: (event) => _resendCode(event, emit),
        // resetPassword: (event) => _resetPassword(event, emit),
        // forgotPassword: (event) => _forgotPassword(event, emit),
      ),
      //? cancel any new event until current is being processed
      transformer: bloc_concurrency.droppable(),
    );
    add(const AuthEvent.getUser(isInitial: true));
    _subs.addAll([
      _apiService.dataResponse.listen((event) {
        if (event.isNotAuthorized) add(const AuthEvent.logout());
      }),
    ]);
  }

  final IAuthRepository _authRepository;
  final IUserRepository _userRepository;
  final AuthStorageService _authStorageService;
  final SocialAuthRepository _socialAuthRepository;
  final ApiService _apiService;

  final _subs = <StreamSubscription>[];

  Future<void> _getUser(_GetUser event, Emitter<AuthState> emit) async {
    emit(const AuthState.inProgress());

    if (event.isInitial) {
      final tokenOrNull = await _authStorageService.getToken();
      if (tokenOrNull == null) return emit(const AuthState.notAuth());
    }
    final resp = await _userRepository.getUser();
    if (resp.isSuccess) {
      final user = resp.data!.toDomain();

      return emit(
        user.phone == null
            ? AuthState.authWithoutRegister(user: user)
            : const AuthState.auth(),
      );
    }

    emit(AuthState.error(message: resp.message));
    emit(const AuthState.notAuth());
  }

  Future<void> _loginWithCreds(
    _LoginWithCreds event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());
    final res = await _authRepository.login(
      LoginDto.byEmail(login: event.email, password: event.password),
    );
    if (res.isSuccess) {
      _authStorageService.updateToken(res.data!.toDomain());
      add(const AuthEvent.getUser(isInitial: false));

      return;
    }

    emit(AuthState.error(message: res.message));
  }

  Future<void> _socialLogin(
    _SocialLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());
    final tokenOrNull = event.method.isGoogle
        ? await _socialAuthRepository.googleLogin()
        : await _socialAuthRepository.facebookLogin();
    if (tokenOrNull == null) {
      return emit(
        AuthState.error(
          message:
              event.method.isGoogle ? S.current.googleError : S.current.fbError,
        ),
      );
    }

    final res = await _authRepository.login(
      event.method.isGoogle
          ? LoginDto.google(socialToken: tokenOrNull)
          : LoginDto.facebook(socialToken: tokenOrNull),
    );
    if (res.isSuccess) await _authStorageService.updateToken(res.data!);

    add(const AuthEvent.getUser(isInitial: false));
  }

  Future<void> _logout(_Logout event, Emitter<AuthState> emit) async {
    await _authRepository.logout();
    _authStorageService.removeToken();
    emit(const AuthState.notAuth());
  }

  Future<void> _deleteAccount(
    _DeleteAccount event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.inProgress());
    final res = await _userRepository.deleteUser(event.userId);
    if (res.isSuccess) return add(const AuthEvent.logout());
    final currState = state;
    emit(AuthState.error(message: res.message));
    emit(currState);
  }

  @override
  Future<void> close() {
    _subs.forEach((e) => e.cancel());

    return super.close();
  }
}

  // Future<void> _signUp(_SignUp event, Emitter<AuthState> emit) async {
  //   emit(const AuthState.inProgress());
  //   final res = await _authRepository.signUp(event.email);
  //   if (res.isSuccess) return emit(const AuthState.success());
  //   emit(AuthState.error(message: res.message));
  // }

  // Future<void> _createAccount(_CreateAccount _, Emitter<AuthState> emit) async {
  //   if (state case final _AuthenticatedWithoutRegister state) {
  //     emit(const AuthState.inProgress());
  //     final res = await _userRepository.editUser(state.user);
  //     if (res.isSuccess) {
  //       emit(AuthState.authenticated(user: res.data!));
  //     } else {
  //       emit(AuthState.error(message: res.message, user: state.user));
  //     }
  //   }
  // }



  // Future<void> _verifyCodeAfterForgetPassword(
  //   _VerifyCodeAfterForgetPassword event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(const AuthState.inProgress());
  //   final res = await _authRepository.verifyConfirmCode(
  //     email: event.email,
  //     confirmationCode: event.code,
  //     appointment: Appointment.FORGOT_PASSWORD,
  //   );
  //   if (res.isSuccess) return emit(const AuthState.success());
  //   emit(AuthState.error(message: res.message));
  // }

  // Future<void> _verifyCodeWhenSignUp(
  //   _VerifyCodeWhenSignUp event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(const AuthState.inProgress());
  //   final res = await _authRepository.verifyConfirmCode(
  //     email: event.email,
  //     confirmationCode: event.code,
  //     appointment: Appointment.EMAIL_VERIFICATION,
  //   );
  //   if (!res.isSuccess) return emit(AuthState.error(message: res.message));
  //   final resp = await _authRepository.setPassword(
  //     email: event.email,
  //     password: event.password,
  //     confirmationCode: event.code,
  //   );
  //   if (!resp.isSuccess) return emit(AuthState.error(message: resp.message));
  //   await _authStorageService.updateToken(resp.data!.toDomain());
  //   add(const AuthEvent.getUser());
  // }

  // Future<void> _resendCode(_ResendCode event, Emitter<AuthState> emit) async {
  //   emit(const AuthState.inProgress());
  //   final res = await _authRepository.resendCode(event.email);
  //   if (res.isSuccess) {
  //     return emit(AuthState.success(user: state.user));
  //   }
  //   emit(AuthState.error(user: state.user, message: res.message));
  // }

  // Future<void> _resetPassword(
  //   _ResetPassword event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(const AuthState.inProgress());
  //   final res = await _authRepository.setPassword(
  //     email: event.email,
  //     password: event.password,
  //     confirmationCode: event.code,
  //   );
  //   if (res.isSuccess) {
  //     return emit(AuthState.success(user: state.user));
  //   }
  //   emit(AuthState.error(user: state.user, message: res.message));
  // }



  // Future<void> _forgotPassword(
  //   _ForgotPassword event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(const AuthState.inProgress());
  //   final resp = await _authRepository.forgotPassword(event.email);
  //   if (resp.isSuccess) return emit(const AuthState.success());
  //   emit(AuthState.error(message: resp.message));
  // }

