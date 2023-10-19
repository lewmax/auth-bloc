import '../../data/network/repos/auth_repository.dart';

class CreatePasswordArgs {
  CreatePasswordArgs({
    required this.email,
    required this.code,
    this.appointment = Appointment.FORGOT_PASSWORD,
  });

  final Appointment appointment;
  final String email;
  final String code;
}
