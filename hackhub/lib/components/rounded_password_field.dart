import 'package:flutter/material.dart';
import 'package:hackhub/components/text_field_container.dart';
import 'package:hackhub/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    super.key, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
      obscureText: true,
      onChanged: onChanged,
      decoration: const InputDecoration(
        hintText: "Password",
        icon: Icon(
          Icons.lock,
          color: primaryColor,
        ),
        border: InputBorder.none,
        suffixIcon: Icon(
          Icons.visibility,
          color: primaryColor,
        ),
      ),
    ),
    );
  }
}
