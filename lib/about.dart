import 'package:aircraftMaintenance/widgets/drawer_widget.dart';
import "package:flutter/material.dart";

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("About"),
      ),
      drawer: DrawerWidget(),
    );
  }
}
