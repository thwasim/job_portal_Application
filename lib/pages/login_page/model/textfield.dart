import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields(
      {Key? key, required this.hint, required this.icon,this.validator})
      : super(key: key);

  
  final String hint;
  final Icon icon;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 19, left: 19, top: 10),
          child: TextFormField(
            autofocus: false,
            validator: validator,
            obscureText: true,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              fillColor: const Color(0xFFFAD0C9),
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
