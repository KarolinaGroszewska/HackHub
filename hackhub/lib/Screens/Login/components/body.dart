import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackhub/Screens/Login/components/background.dart';
import 'package:hackhub/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text("Login",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              "assets/images/login.svg",
              height: size.height * 0.45,
            ),
          ],
        ),
      )
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    super.key,
    required this.text,
    required this.press,
    this.color = primaryColor,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
          ),
          onPressed: () {
            press();
          },
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
