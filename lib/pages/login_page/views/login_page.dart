import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/SignUp/views/signup_screen.dart';
import 'package:second_project/pages/login_page/views/field.dart';
import '../controller/logincontroller.dart';

class SignInscreen extends StatelessWidget {
  SignInscreen({Key? key}) : super(key: key);

 bool buttonPressed = false;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Consumer<Loginprovider>(
          builder: (context, val, child) {
            return Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  Text(
                    'LOGIN ACCOUNT',
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w800),
                  ),
                  Image.asset('assets/computers.jpg'),
                  Signupfield(
                    controller:
                        context.watch<Loginprovider>().loginEmailController,
                    hint: 'Email',
                    icon: const Icon(Icons.email),
                    validator: (value) => val.email(value),
                  ),
                  SizedBox(height: 10.h),
                  Signupfield(
                    obscure: val.visibility,
                    icons: IconButton(
                        onPressed: () {
                          val.updateVisibility();
                        },
                        icon: Icon(val.visibility
                            ? Icons.visibility_off_outlined
                            : Icons.visibility)),
                    controller:
                        context.watch<Loginprovider>().loginPasswordController,
                    hint: 'Password',
                    icon: const Icon(Icons.vpn_key_rounded),
                    validator: (value) => val.passwords(value),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.all(10.0.r),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30.r),
                      color: const Color.fromARGB(255, 202, 227, 254),
                      child: MaterialButton(
                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                        minWidth: MediaQuery.of(context).size.width * 0.8,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            buttonPressed = true;
                            context
                                .read<Loginprovider>()
                                .loginfunction(context);
                          }
                        },
                        child: Text('Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  Text(
                    'Or',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 17.sp),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.r, left: 40.r),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(50.r),
                      child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(10.r, 11.r, 10.r, 10.r),
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
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Don\'t have an account?',
                      style: const TextStyle(color: Colors.black, fontSize: 18),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sign up',
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 18.sp),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (ctx) => const SignUpScreen(),
                                ),
                              );
                            },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
