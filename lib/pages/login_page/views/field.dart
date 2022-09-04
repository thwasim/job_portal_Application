import 'package:flutter/material.dart';

class Signupfield extends StatelessWidget {
  const Signupfield({
    Key? key,
    required this.hint,
    required this.icon,
    this.validator,
    required this.controller,
    this.icons,
    this.obscure,
    this.readOnly,
  }) : super(key: key);

  final String hint;
  final Icon icon;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final IconButton? icons;
  final bool? obscure;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 19, left: 19, top: 10),
          child: TextFormField(
            readOnly: readOnly??false,
            autofocus: false,
            validator: validator,
            controller: controller,
            obscureText: obscure??false,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              suffixIcon: icons,
              fillColor: const Color.fromARGB(255, 202, 227, 254),
              filled: true,
              prefixIcon: icon,
              contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
              hintText: hint,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            ),
          ),
        ),
      ],
    );
  }
}
