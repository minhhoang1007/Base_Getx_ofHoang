import 'package:base_getx_hoang/routes/routes.dart';
import 'package:base_getx_hoang/screen/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            margin:
                const EdgeInsetsDirectional.only(top: 50, start: 50, end: 50),
            child: Center(
              child: Column(
                children: [
                  _usernameTextField(),
                  _passwordTextField(),
                  _loginButton()
                ],
              ),
            )),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.person, color: Colors.grey), hintText: "Username"),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.key, color: Colors.grey), hintText: "Password"),
    );
  }

  Widget _loginButton() {
    return Container(
        margin: const EdgeInsetsDirectional.only(top: 20),
        child: ElevatedButton(
            onPressed: () => {Get.toNamed(Routes.home)},
            child: const Text("LOGIN")));
  }
}
