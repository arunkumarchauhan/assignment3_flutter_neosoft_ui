import 'package:assignment3_uidesign/utils/app_router.dart';
import 'package:assignment3_uidesign/views/shared/buttons/dark_pink_whitetext_button.dart';
import 'package:flutter/material.dart';

class RouterPage extends StatelessWidget {
  const RouterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "AppRouter Screen",
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          DarkPinkWhiteTextElevatedButton(
            text: "Push Weather App",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.weather);
            },
          ),
          DarkPinkWhiteTextElevatedButton(
            text: "Push LoginSplash App",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.loginSplash);
            },
          ),
          DarkPinkWhiteTextElevatedButton(
            text: "Push Food App",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.foodAppScreen);
            },
          ),
          DarkPinkWhiteTextElevatedButton(
            text: "Push Food App2",
            onPressed: () {
              Navigator.pushNamed(context, AppRouter.foodAppScreen2);
            },
          )
        ],
      ),
    );
  }
}
