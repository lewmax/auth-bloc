import 'package:countries_utils/countries.dart';
import 'package:countries_utils/models/country.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/network/repos/user_repository.dart';
import '../../../../models/dtos/edit_user_dto.dart';

part 'create_account_event.dart';
part 'create_account_state.dart';
part 'create_account_bloc.freezed.dart';

class CreateAccountBloc extends Bloc<CreateAccountEvent, CreateAccountState> {
  CreateAccountBloc({
    required IUserRepository userRepository,
    required List<Country> countries,
  })  : _userRepository = userRepository,
        _countries = countries,
        super(
          _Initial(
            phone: '',
            phoneCountryCode: '254',
            country: '',
            city: '',
            username: '',
            isUserAgree: false,
            isCountriesCodeOpen: false,
            isCountriesListOpen: false,
            codeCountries: countries,
            countries: countries,
          ),
        ) {
    on<CreateAccountEvent>(
      (event, emit) => event.map(
        updateName: (event) => _updateName(event, emit),
        updatePhoneCode: (event) => _updatePhoneCode(event, emit),
        updatePhone: (event) => _updatePhone(event, emit),
        updateCountry: (event) => _updateCountry(event, emit),
        updateCity: (event) => _updateCity(event, emit),
        toggleCountryCodes: (event) => _toggleCountryCodes(event, emit),
        toggleCountriesList: (event) => _toggleCountriesList(event, emit),
        toggleUserAgree: (event) => _toggleUserAgree(event, emit),
        createAccount: (event) => _createAccount(event, emit),
        searchCountry: (event) => _searchCountry(event, emit),
        searchCountryCode: (event) => _searchCountryCode(event, emit),
      ),
    );
  }

  final IUserRepository _userRepository;
  final List<Country> _countries;

  Future<void> _createAccount(
    _CreateAccount _,
    Emitter<CreateAccountState> emit,
  ) async {
    emit(
      CreateAccountState.inProgress(
        phone: state.phone,
        phoneCountryCode: state.phoneCountryCode,
        country: state.country,
        city: state.city,
        username: state.username,
        isUserAgree: state.isUserAgree,
        codeCountries: state.codeCountries,
        countries: state.countries,
        isCountriesCodeOpen: state.isCountriesCodeOpen,
        isCountriesListOpen: state.isCountriesListOpen,
      ),
    );
    final res = await _userRepository.editUser(
      EditUserDto(
        phone: state.phone.replaceAll('-', ''),
        phoneCountryCode: '+${state.phoneCountryCode}',
        country: state.country,
        city: state.city,
        username: state.username,
      ),
    );
    if (res.isSuccess) {
      return emit(
        CreateAccountState.success(
          phone: state.phone,
          phoneCountryCode: state.phoneCountryCode,
          country: state.country,
          city: state.city,
          username: state.username,
          codeCountries: state.codeCountries,
          countries: state.countries,
          isUserAgree: state.isUserAgree,
          isCountriesCodeOpen: state.isCountriesCodeOpen,
          isCountriesListOpen: state.isCountriesListOpen,
        ),
      );
    }
    emit(
      CreateAccountState.error(
        message: res.message ?? 'Error when creating account',
        phone: state.phone,
        phoneCountryCode: state.phoneCountryCode,
        country: state.country,
        city: state.city,
        codeCountries: state.codeCountries,
        countries: state.countries,
        username: state.username,
        isUserAgree: state.isUserAgree,
        isCountriesCodeOpen: state.isCountriesCodeOpen,
        isCountriesListOpen: state.isCountriesListOpen,
      ),
    );
  }

  void _toggleUserAgree(_ToggleUserAgree _, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(isUserAgree: !state.isUserAgree));
  }

  void _toggleCountriesList(
    _ToggleCountriesList _,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(isCountriesListOpen: !state.isCountriesListOpen));
  }

  void _toggleCountryCodes(
    _ToggleCountryCodes _,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(isCountriesCodeOpen: !state.isCountriesCodeOpen));
  }

  void _updateCity(_UpdateCity event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(city: event.city));
  }

  void _updateCountry(_UpdateCountry event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(country: event.country));
  }

  void _updatePhone(_UpdatePhone event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(phone: event.phone));
  }

  void _updatePhoneCode(
    _UpdatePhoneCode event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(state.copyWith(phoneCountryCode: event.phoneCode));
  }

  void _updateName(_UpdateName event, Emitter<CreateAccountState> emit) {
    emit(state.copyWith(username: event.name));
  }

  void _searchCountry(_SearchCountry event, Emitter<CreateAccountState> emit) {
    emit(
      state.copyWith(
        countries: _countries
            .where(
              (element) => (element.name ?? '')
                  .toLowerCase()
                  .contains(event.country.toLowerCase()),
            )
            .toList(),
      ),
    );
  }

  void _searchCountryCode(
    _SearchCountryCode event,
    Emitter<CreateAccountState> emit,
  ) {
    emit(
      state.copyWith(
        codeCountries: _countries
            .where(
              (element) => (element.name ?? '')
                  .toLowerCase()
                  .contains(event.countryCode.toLowerCase()),
            )
            .toList(),
      ),
    );
  }
}
