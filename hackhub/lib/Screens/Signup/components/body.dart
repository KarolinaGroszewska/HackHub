import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hackhub/Screens/Login/login_screen.dart';
import 'package:hackhub/Screens/Signup/components/background.dart';
import 'package:hackhub/components/rounded_button.dart';
import 'package:hackhub/components/rounded_input_field.dart';
import 'package:hackhub/components/rounded_password_field.dart';
import 'package:hackhub/constants.dart';

class Body extends StatelessWidget {
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.02),
          SvgPicture.asset(
            "assets/images/signup.svg",
            height: size.height * 0.45,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "Sign Up", press: () {}
          ),
          SizedBox(height: size.height * 0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
              "Already have an account? ",
              style: TextStyle(color: primaryColor),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginScreen();
                      },
                    ),
                  );
                },
                child: const Text(
                  "Login ", 
                  style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
                  ),
              ),
                const Text(
              "instead.",
              style: TextStyle(color: primaryColor),
              ),
              ],
          )
        ],
      ),
    ));
  }
}
