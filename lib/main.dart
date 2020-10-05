import 'package:driverapp/Screens/SplashScreen.dart';
import 'package:driverapp/TripAlerts/gotRide.dart';
import 'package:driverapp/TripAlerts/pickRide.dart';

import 'Screens/Home/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen());
  }
}
