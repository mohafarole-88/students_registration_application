import 'package:students_registration_application/models/login_model.dart';

class LoginController {
  final String _Correctusername = "Admin";
  final String _Correctpassword = "1234";

  UsersModel? Login(String username, String password) {
    if (username == _Correctusername && password == _Correctpassword) {
      return UsersModel(username: username, password: password);
    }
    return null;
  }
}
