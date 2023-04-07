import 'package:base_getx_hoang/common/common.dart';
import 'package:base_getx_hoang/routes/routes.dart';
import 'package:base_getx_hoang/screen/home/home_screen.dart';
import 'package:base_getx_hoang/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['assets/lang'];
    return GetMaterialApp(
      locale: Locale(Common.langNow),
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        LocalJsonLocalization.delegate,
      ],
      supportedLocales: [
        Locale('vi', 'VI'),
        Locale('en', 'US'),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        // if (supportedLocales.contains(locale)) {
        //   return locale;
        // }
        // if (locale?.languageCode == 'en') {
        //   return const Locale('vi', 'VI');
        // }
        // return const Locale('en', 'US');
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            Common.langNow = supportedLocale.languageCode;

            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
      title: 'Base Flutter GetxHoang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
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
