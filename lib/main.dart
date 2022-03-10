import 'package:base_getx_hoang/routes/routes.dart';
import 'package:base_getx_hoang/screen/home/home_screen.dart';
import 'package:base_getx_hoang/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      // home: const LoginScreen(),
      initialRoute: Routes.login,
      getPages: [
        GetPage(
          name: Routes.login,
          page: () => const LoginScreen(),
        ),
        GetPage(
          name: Routes.home,
          page: () => const HomeScreen(),
        ),
      ],
    );
  }
}
