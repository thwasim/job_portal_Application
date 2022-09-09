import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/SignUp/controller/signpageprovider.dart';
import 'package:second_project/pages/application/controller/applicationprovider.dart';
import 'package:second_project/pages/bottom_nav_bar/controller/botton_nav_controller.dart';
import 'package:second_project/pages/introduction/controller/introdutioncontroller.dart';
import 'package:second_project/pages/login_page/controller/logincontroller.dart';
import 'package:second_project/pages/profileedit/controller/profileeditcontroller.dart';
import 'package:second_project/pages/splah_screen/controller/splah_controller.dart';
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
        ChangeNotifierProvider(create: (_) => ProfileEditProvider()),
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
