import 'package:equatable/equatable.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class AuthTokenEntity extends Equatable {
  AuthTokenEntity({
    required this.accessToken,
    required this.refreshToken,
  }) : expirationDate = JwtDecoder.getExpirationDate(accessToken);

  final String accessToken;
  final DateTime expirationDate;
  final String refreshToken;

  ///seconds
  int get expiresIn => expirationDate.difference(DateTime.now()).inSeconds;

  bool get expired => expiresIn <= 10;

  @override
  List<Object?> get props => [accessToken, expirationDate, refreshToken];
}
