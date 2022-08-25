import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:second_project/pages/SignUp/model/signuptext.dart';
import 'package:second_project/pages/bottom_nav_bar/views/bottom_nav.dart';
import 'package:second_project/pages/login_page/views/login_page.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6E6E6D),
      body: Form(
        key: formKey,
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.18,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      offset: Offset(0, 4), blurRadius: 10),
                                ],
                                color: const Color(0xFFFAD0C9),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child: const Center(
                                      child: Text(
                                    'Find your dream Job',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ))),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 60,
                        right: 20,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/lap.png'))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.015,
                  ),
                const  SignUpTextField(),
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
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) =>const Bottom_nav()));
                          }
                        },
                        child: const Text('Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 40),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(50),
                      child: MaterialButton(
                          padding: const EdgeInsets.fromLTRB(10, 13, 10, 13),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.asset('assets/google.png'),
                              ),
                              const Text(
                                'Sign With Google',
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
                        text: 'I have an account',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                        children: <TextSpan>[
                          TextSpan(
                              text: ' Sign up',
                              style: const TextStyle(
                                  color: Colors.blueAccent, fontSize: 18),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (ctx) => Signupscreen()));
                                })
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
