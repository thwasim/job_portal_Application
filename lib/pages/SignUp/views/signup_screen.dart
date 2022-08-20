import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          child: SingleChildScrollView(
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
                              boxShadow: const [
                                BoxShadow(offset: Offset(0, 4), blurRadius: 10),
                              ],
                              color: const Color(0xFFFAD0C9),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.9,
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
                Padding(
                  padding: const EdgeInsets.only(right: 19, left: 19, top: 10),
                  child: TextFormField(
                    autofocus: false,
                    validator: (value) {
                      RegExp regex = RegExp(r'^.{3,}$');
                      if (value!.isEmpty) {
                        return ("Enter The User Name");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Enter Valid name(Min. 3 Character)");
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFFAD0C9),
                      filled: true,
                      prefixIcon: const Icon(Icons.person),
                      contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                      hintText: 'User name',
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return ("Please Enter Your Email");
                      }
                      if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(value)) {
                        return ("Please Enter a valid email");
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFFAD0C9),
                      filled: true,
                      prefixIcon: const Icon(Icons.email),
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
                        return ("Type Your Password");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Enter Valid Password(Min. 6 Character)");
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
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
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 19, left: 19, top: 10),
                  child: TextFormField(
                    autofocus: false,
                    obscureText: true,
                    // validator: () {},
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      fillColor: const Color(0xFFFAD0C9),
                      filled: true,
                      prefixIcon: const Icon(Icons.vpn_key),
                      contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                      hintText: 'confirm password',
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
                          Get.to( Signupscreen());
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
                SizedBox(height: MediaQuery.of(context).size.height*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Don't Have an Account"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Signupscreen());
                      },
                      child: const Text(
                        'SignUp',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
