import 'package:flutter/material.dart';

class ProfileFields extends StatelessWidget {
  const ProfileFields({
    Key? key,
    required this.hint,
    this.validator,
    this.controller,
    this.textInputType,
  }) : super(key: key);

  final String hint;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        fillColor: const Color(0xffffffff),
        filled: true,
        contentPadding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
