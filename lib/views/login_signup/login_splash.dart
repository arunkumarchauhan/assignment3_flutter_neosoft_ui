import 'package:assignment3_uidesign/utils/app_router.dart';
import 'package:assignment3_uidesign/views/shared/buttons/black_text_white_elevated_button.dart';
import 'package:assignment3_uidesign/views/shared/buttons/dark_pink_whitetext_button.dart';
import 'package:flutter/material.dart';

class LoginSplashPage extends StatelessWidget {
  const LoginSplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 90),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                "assets/images/observation-urban-building-business-steel.jpg"),
            fit: BoxFit.fill),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "HELLO",
                style: Theme.of(context).textTheme.headline5,
              ),
              Text(
                "Lorem ipsum dolor sit amet",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DarkPinkWhiteTextElevatedButton(
                  text: "Sign In",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouter.loginScreen);
                  }),
              BlackTextWhiteElevatedButton(
                  text: "Sign Up",
                  onPressed: () {
                    Navigator.pushNamed(context, AppRouter.loginScreen);
                  }),
            ],
          )
        ],
      ),
    );
  }
}
