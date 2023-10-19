import '../../data/network/repos/auth_repository.dart';

sealed class VerificationArgs {
  VerificationArgs({required this.appointment, required this.email});

  final Appointment appointment;
  final String email;
}

class VerificationForgotPasswordArgs extends VerificationArgs {
  VerificationForgotPasswordArgs({
    required super.email,
    super.appointment = Appointment.FORGOT_PASSWORD,
  });
}

class VerificationSignUpArgs extends VerificationArgs {
  VerificationSignUpArgs({
    required this.password,
    required super.email,
    super.appointment = Appointment.EMAIL_VERIFICATION,
  });

  final String password;
}
