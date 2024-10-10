import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackhub/Screens/Login/login_screen.dart';
import 'package:hackhub/Screens/Welcome/components/background.dart';
import 'package:hackhub/components/rounded_button.dart';
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
            const Text("Welcome to HackHub",
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              "assets/images/home.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              text: "Login",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
                  },
                  ),
                );
                },
            ),
            RoundedButton(
              text: "Get Started",
              press: () {},
              color: primaryLightColor,
              textColor: Colors.black,
            )
          ],
        ),
      )
    );
  }
}
