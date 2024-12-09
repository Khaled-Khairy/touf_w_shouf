import 'package:touf_w_shouf/features/auth/data/models/login_models/login_request.dart';
import 'package:touf_w_shouf/features/auth/data/models/reset_password_models/reset_password_request.dart';

abstract class ApiEndpoints {
  static const String baseUrl = 'https://app.misrtravelco.net:4444/ords/invoice/programes/';
  static const String signUp = 'client/';

  static String login({required LoginRequest loginRequest}) {
    return 'ClientLogin/${loginRequest.email}/${loginRequest.password}';
  }

  static String forgetPassword({required String email}) {
    return 'forgetPassword/$email';
  }

  static String validateOtpForget({required String email}) {
    return 'forgetPassword/$email';
  }

  static String validateEmail({required String otp}) {
    return 'validation/$otp';
  }

  static String resetPassword({required ResetPasswordRequest request}) {
    return 'forgetPassword/${request.email}?V_OTP=${request.otp}&TransNo=${request.transactionNo}&pass=${request.password}';
  }
  static const String allActivePrograms = 'onlyCurrent/0';
}
