import 'package:flutter/material.dart';
import 'package:micro_solutions/Screens/Login/components/background.dart';
import 'package:micro_solutions/Screens/Signup/signup_screen.dart';
import 'package:micro_solutions/components/already_have_an_account_acheck.dart';
import 'package:micro_solutions/components/rounded_button.dart';
import 'package:micro_solutions/components/rounded_input_field.dart';
import 'package:micro_solutions/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:micro_solutions/HomeScreen/HomeScreen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context){
                      return HomeScreen();
                    },
                ),);
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
