import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:second_project/pages/SignUp/provider/signpageprovider.dart';
import 'package:second_project/pages/login_page/model/textfield.dart';

class SignUpTextField extends StatelessWidget {
  const SignUpTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Signupprovider>(
      builder: (context, values, child) {
        return Column(
          children: [
            TextFields(
              hint: 'user Name',
              icon: const Icon(Icons.person),
              validator: (value) => values.username(value),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFields(
              hint: 'Email',
              icon: const Icon(Icons.email),
              validator: (value) => values.email(value),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TextFields(
              hint: 'Password',
              icon: const Icon(Icons.vpn_key),
              validator: (value) => values.password(value),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            const TextFields(hint: 'Confirm Password', icon: Icon(Icons.lock)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        );
      },
    );
  }
}
