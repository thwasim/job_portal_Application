import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/SignUp/views/signup_screen.dart';
import 'package:second_project/pages/bottom_nav_bar/views/bottom_nav.dart';
import 'package:second_project/pages/login_page/model/textfield.dart';
import 'package:second_project/pages/login_page/provider/logincontroller.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Consumer<Loginprovider>(
          builder: (context, val, child) {
            return Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  const Text(
                    'LOGIN ACCOUNT',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  Image.asset('assets/computers.jpg'),
                  TextFields(
                    hint: 'Email',
                    icon: const Icon(Icons.email),
                    validator: (value) => val.email(value),
                  ),
                  const SizedBox(height: 10),
                  TextFields(
                    hint: 'Password',
                    icon: const Icon(Icons.vpn_key_rounded),
                    validator: (value) => val.passwords(value),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFFAD0C9),
                      child: MaterialButton(
                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (ctx) =>const Bottom_nav(),
                              ),
                            );
                          }
                        },
                        child: const Text('Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  const Text(
                    'Or',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 40),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(50),
                      child: MaterialButton(
                          padding: const EdgeInsets.fromLTRB(10, 11, 10, 10),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.asset('assets/google.png'),
                              ),
                              const Text(
                                'Login With Google',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  RichText(
                    text: TextSpan(
                        text: 'Don\'t have an account?',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign up',
                              style: const TextStyle(
                                  color: Colors.blueAccent, fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => SignUp()));
                                })
                        ]),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
