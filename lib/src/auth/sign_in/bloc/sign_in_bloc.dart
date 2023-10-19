import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_bloc.freezed.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.toggleShowPassword() = _ToggleShowPassword;
}

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial({@Default(false) bool showPassword}) =
      _Initial;
}

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(const _Initial()) {
    on<SignInEvent>(
      (event, emit) => event.map(
        toggleShowPassword: (_) =>
            emit(state.copyWith(showPassword: !state.showPassword)),
      ),
    );
  }
}
