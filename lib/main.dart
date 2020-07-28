import "package:flutter/material.dart";
import "package:aircraftMaintenance/home.dart";
import "package:flutter/services.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: Home(),
      title: "Aicraft Maintenance",
      theme: ThemeData(
          primaryColor: Colors.blue[900],
          accentColor: Color(0x111585),
          scaffoldBackgroundColor: Color(0x111585)),
    );
  }
}
