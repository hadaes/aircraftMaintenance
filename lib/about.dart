import 'package:aircraftMaintenance/widgets/drawer_widget.dart';
import "package:flutter/material.dart";

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text("About"),
      ),
      drawer: DrawerWidget(),
      body: Center(
        child: Text(
          "By Jack Scherlag",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
            fontFamily: "Montserrat",
          ),
        ),
      ),
    );
  }
}
