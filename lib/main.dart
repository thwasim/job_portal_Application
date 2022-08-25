import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/SignUp/provider/signpageprovider.dart';
import 'package:second_project/pages/application/provider/applicationprovider.dart';
import 'package:second_project/pages/bottom_nav_bar/provider/botton_nav_controller.dart';
import 'package:second_project/pages/introduction/provider/introdutioncontroller.dart';
import 'package:second_project/pages/login_page/provider/logincontroller.dart';
import 'package:second_project/pages/splah_screen/provider/splah_controller.dart';
import 'package:second_project/pages/splah_screen/views/splash_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Introductionprovider()),
        ChangeNotifierProvider(create: (_) => Splahprovider()),
        ChangeNotifierProvider(create: (_) => Bottomprovider()),
        ChangeNotifierProvider(create: (_) => Loginprovider()),
        ChangeNotifierProvider(create: (_) => Signupprovider()),
        ChangeNotifierProvider(create: (_) => Applicationsprovider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Screensplash(),
    );
  }
}
