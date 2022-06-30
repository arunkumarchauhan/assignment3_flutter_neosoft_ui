import 'dart:math';

import 'package:assignment3_uidesign/models/weather_days_model.dart';
import 'package:assignment3_uidesign/res/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(getColor(1).value, customColor),
        primaryColor: const Color.fromRGBO(129, 9, 85, 0),
        scaffoldBackgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black, size: 38),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 25),
          bodyText1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 20),
          headline1: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w400, fontSize: 45),
          headline2: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 70),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/weather_background.jpeg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "RockVille",
              style: Theme.of(context).textTheme.headline1,
            ),
            Center(
              child: Text(
                "Cloudy",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "75°",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _buildText(context, "Sunday"),
                    _buildText(context, "Today"),
                  ],
                ),
                _buildText(context, "84"),
              ],
            ),
            _buildDivider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _buildTodayWeatherAnalysis(context),
            ),
            const SizedBox(
              height: 10,
            ),
            _buildDivider(),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: WeatherDayModel.getDaysPrediction()
                    .map((e) => Row(
                          children: [
                            SizedBox(
                                width: 200, child: _buildText(context, e.day)),
                            _buildIcons(context, e.iconData)
                          ],
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _buildTodayWeatherAnalysis(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildTodayWeatherColumn(context, "Now", Icons.cloud, "23°"),
        _buildTodayWeatherColumn(context, "11 am", Icons.cloud_outlined, "25°"),
        _buildTodayWeatherColumn(context, "12 pm", Icons.cloud, "27°"),
        for (int hour = 1; hour <= 11; hour++)
          _buildTodayWeatherColumn(
              context,
              "$hour pm",
              hour % 2 == 0 ? Icons.cloud : Icons.cloud_outlined,
              "${23 + Random().nextInt(15)}°")
      ],
    );
  }

  Widget _buildTodayWeatherColumn(
      BuildContext context, String text, IconData icon, String temp) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildText(context, text),
        const SizedBox(
          height: 25,
        ),
        _buildIcons(context, icon),
        const SizedBox(
          height: 20,
        ),
        _buildText(context, temp),
      ],
    );
  }

  Divider _buildDivider() {
    return const Divider(
      height: 10,
      thickness: 2,
      color: Colors.black,
    );
  }

  Widget _buildIcons(BuildContext context, IconData icon) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 7, 0),
      child: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
        size: Theme.of(context).iconTheme.size,
      ),
    );
  }

  Padding _buildText(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
