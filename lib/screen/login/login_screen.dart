import 'package:base_getx_hoang/routes/routes.dart';
import 'package:base_getx_hoang/screen/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/localization.dart';

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
        appBar: AppBar(title: Text("login".i18n())),
        body: Container(
            margin:
                const EdgeInsetsDirectional.only(top: 50, start: 50, end: 50),
            child: Center(
              child: Column(
                children: [
                  _usernameTextField(),
                  _passwordTextField(),
                  _loginButton(),
                  _languageEnglish(),
                  _languageVietnamese()
                ],
              ),
            )),
      ),
    );
  }

  Widget _usernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          icon: const Icon(Icons.person, color: Colors.grey),
          hintText: "username".i18n()),
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(
          icon: const Icon(Icons.key, color: Colors.grey),
          hintText: "password".i18n()),
    );
  }

  Widget _loginButton() {
    return Container(
        margin: const EdgeInsetsDirectional.only(top: 20),
        child: ElevatedButton(
            onPressed: () => {Get.toNamed(Routes.home)},
            child: const Text("LOGIN")));
  }

  Widget _languageEnglish() {
    return Container(
        margin: const EdgeInsetsDirectional.only(top: 20),
        child: ElevatedButton(
            onPressed: () => {
                  controller.language = "en",
                  controller.changeLanguage(context)
                },
            child: Text("english".i18n())));
  }

  Widget _languageVietnamese() {
    return Container(
        margin: const EdgeInsetsDirectional.only(top: 20),
        child: ElevatedButton(
            onPressed: () => {
                  controller.language = "vi",
                  controller.changeLanguage(context)
                },
            child: Text("vietnamese".i18n())));
  }
}
//EasyLocalization.of(context).locale = Locale('en', 'US'); 
