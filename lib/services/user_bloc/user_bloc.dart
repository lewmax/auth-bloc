import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/network/repos/user_repository.dart';
import '../../models/entities/userEntity.dart';
import '../auth_bloc/auth_bloc.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({
    required IUserRepository userRepository,
    required AuthBloc authBloc,
  })  : _userRepository = userRepository,
        _authBloc = authBloc,
        super(const _Initial()) {
    on<UserEvent>(
      (event, emit) => event.map(
        getUser: (event) => _getUser(event, emit),
      ),
    );
    add(const UserEvent.getUser());
  }

  final IUserRepository _userRepository;
  final AuthBloc _authBloc;

  Future<void> _getUser(_GetUser event, Emitter<UserState> emit) async {
    final res = await _userRepository.getUser();
    if (res.isSuccess) return emit(UserState.success(user: res.data!));

    state.maybeMap(
      initial: (state) => _authBloc.add(const AuthEvent.logout()),
      orElse: () => emit(
        UserState.error(
          message: res.message ?? 'Error while getting user',
          user: state.user!,
        ),
      ),
    );
  }
}
