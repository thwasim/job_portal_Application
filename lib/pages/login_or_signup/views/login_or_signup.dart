import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/pages/SignUp/views/signup_screen.dart';
import 'package:second_project/pages/login_page/views/login_page.dart';

// ignore: camel_case_types
class Login_or_signup extends StatelessWidget {
  const Login_or_signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset('assets/near.webp'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/pngtree.png',
                  width: 90,
                  height: 90,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(50),
                color: const Color(0xFFFAD0C9),
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                     Get.to(Signupscreen());
                  },
                  child: const Text('LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                ),
                const Text(
                  '---------------------- or ----------------------',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(50),
                color:const Color(0xFFFAD0C9),
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                   Get.to(SignUp());
                  },
                  child: const Text('SIGN UP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
