import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/SignUp/views/feild.dart';
import '../../login_page/views/login_page.dart';
import '../controller/signpageprovider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6E6E6D),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Consumer<Signupprovider>(
              builder: (context, value, child) => Form(
                key: value.formKeys,
                child: Column(
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
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 10.r),
                                  ],
                                  color:
                                      const Color.fromARGB(255, 202, 227, 254),
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child: Center(
                                    child: Text(
                                      'Find your dream Job',
                                      style: TextStyle(
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 60,
                          right: 20,
                          child: Container(
                            height: 100.h,
                            width: 100.w,
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
                    const SignUpTextField(),
                    Padding(
                      padding: EdgeInsets.only(left: 17.r, right: 17.r),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(50.r),
                        color: const Color.fromARGB(255, 202, 227, 254),
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(20.r, 15.r, 20.r, 15.r),
                          minWidth: MediaQuery.of(context).size.width,
                          onPressed: () {
                            if (context
                                .read<Signupprovider>().formKeys.currentState!
                                .validate()) {
                              Provider.of<Signupprovider>(context,
                                      listen: false)
                                  .signupfunction(context);
                            }
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Text(
                      'Or',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 18.r, left: 20.r),
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(50.r),
                        child: MaterialButton(
                          padding: EdgeInsets.fromLTRB(10.r, 13.r, 10.r, 13.r),
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
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'I have an account',
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Sign up',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 18.sp),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (ctx) => SignInscreen()),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
