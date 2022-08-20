import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_project/bindings/bottom_nav_binding.dart';
import 'package:second_project/pages/SignUp/views/signup_screen.dart';
import 'package:second_project/pages/bottom_nav_bar/views/bottom_nav.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const Text(
                'LOGIN ACCOUNT',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Image.asset('assets/computers.jpg'),
              Padding(
                padding: const EdgeInsets.only(right: 19, left: 19, top: 10),
                child: TextFormField(
                  autofocus: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ("Please Enter Your Email");
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return ("Please Enter a Valid Eamil");
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    fillColor: const Color(0xFFFAD0C9),
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                    contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 19, left: 19, top: 10),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  validator: (value) {
                    RegExp regex = RegExp(r'^.{6,}$');
                    if (value!.isEmpty) {
                      return ("Password is Required For Login");
                    }
                    if (!regex.hasMatch(value)) {
                      return ("Enter Valid Password(Min. 6 Character");
                    }
                    return null;
                  },
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(
                    fillColor: const Color(0xFFFAD0C9),
                    filled: true,
                    prefixIcon: const Icon(Icons.vpn_key),
                    contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                    hintText: 'password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
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
                        Get.off(const Bottom_nav(),
                            binding: BottomNavBinding());
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
                SizedBox(height: MediaQuery.of(context).size.height*0.14,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text("Don't Have an Account"),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => SignUp());
                    },
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
