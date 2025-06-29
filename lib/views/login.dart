import 'package:flutter/material.dart';
import 'package:students_registration_application/Widgets/LoginFormFields.dart';
import 'package:students_registration_application/constants/themes.dart';
import 'package:students_registration_application/controllers/login_controllers.dart';
import 'package:students_registration_application/views/main_menu.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final LoginController _controller = LoginController();
  String _message = "";

  void _handleLogin() async {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    final user = _controller.Login(username, password);

    if (user != null) {
      setState(() {
        _message = "Login Successful!";
      });

      await Future.delayed(
        Duration(seconds: 2),
      );

      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainDashboard()));

      _clearFields();
    } else {
      setState(() {
        _message = "Invalid Credentials";
      });
    }
  }

  void _clearFields() {
    setState(() {
      _message = "";
      _usernameController.clear();
      _passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login", style: AppTheme.LargeTitle),
          backgroundColor: ThirdColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Card(
            color: DarkColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "User Authentication",
                    style: AppTheme.LargeTitle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  LoginFormFields(
                    icon: AppTheme.styledIcon(
                      Icons.person,
                    ),
                    labelText: "Username",
                    obsecureText: false,
                    controller: _usernameController,
                  ),
                  const SizedBox(height: 35.0),
                  LoginFormFields(
                    icon: AppTheme.styledIcon(
                      Icons.lock,
                    ),
                    labelText: "Password",
                    obsecureText: true,
                    controller: _passwordController,
                  ),
                  SizedBox(height: 35.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: AppTheme.LoginButtonsStyle,
                          onPressed: _handleLogin,
                          child: Text(
                            "Login",
                            style: AppTheme.ButtonTitle,
                          ),
                        ),
                        ElevatedButton(
                          style: AppTheme.LoginButtonsStyle,
                          onPressed: _clearFields,
                          child: Text(
                            "Cancel",
                            style: AppTheme.ButtonTitle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    _message,
                    style: TextStyle(
                      color: _message == "Login Successful!"
                          ? Colors.green
                          : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
