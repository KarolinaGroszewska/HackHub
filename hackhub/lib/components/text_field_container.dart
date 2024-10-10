import 'package:flutter/material.dart';
import 'package:hackhub/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    super.key, 
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: primaryLightColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}