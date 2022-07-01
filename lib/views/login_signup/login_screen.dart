import 'package:assignment3_uidesign/utils/styles.dart';
import 'package:assignment3_uidesign/views/shared/buttons/dark_pink_whitetext_button.dart';
import 'package:assignment3_uidesign/views/shared/buttons/icon_text.dart';
import 'package:assignment3_uidesign/views/shared/buttons/icon_text_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/giant-building-with-sun.jpg",
              fit: BoxFit.fill,
              height: 220,
              width: double.infinity,
            ),
            const SizedBox(
              height: 60,
            ),
            const CustomTextFormField(
              hintText: "Email",
            ),
            const CustomTextFormField(
              hintText: "Password",
            ),
            const SizedBox(
              height: 10,
            ),
            DarkPinkWhiteTextElevatedButton(
                text: "Sign In",
                onPressed: () {
                  print("Sign In Button Pressed");
                }),
            Center(
              child: TextButton(
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    print("Forgot Button Pressed");
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconTextOutlinedButton(
                    text: "Sign In",
                    icon: Icons.facebook,
                    onPressed: () {
                      print("Facebook SIgn In Pressed");
                    }),
                const SizedBox(
                  width: 20,
                ),
                IconTextOutlinedButton(
                    text: "Sign In",
                    icon: Icons.g_mobiledata,
                    onPressed: () {
                      print("Google Plus SIgn In Pressed");
                    }),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: errorTextStyle,
                ),
                TextButton(
                    onPressed: () {
                      print("Sign Up Button Pressed");
                    },
                    child: Text(
                      "Sign Up",
                      style: Theme.of(context).textTheme.headline6,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
