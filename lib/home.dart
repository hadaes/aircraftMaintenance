import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: const Text(
          "N288MC",
          style: TextStyle(
            fontFamily: "Montserrat",
          ),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0),
              child: const Text(
                "Aircraft Maintenance Items",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Montserrat",
                  fontSize: 18.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Placeholder(
                  fallbackHeight: 40.0,
                  fallbackWidth: 40.0,
                ),
                Placeholder(
                  fallbackHeight: 40.0,
                  fallbackWidth: 40.0,
                ),
                Placeholder(
                  fallbackHeight: 40.0,
                  fallbackWidth: 40.0,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Placeholder(
                  fallbackHeight: 40.0,
                  fallbackWidth: 40.0,
                ),
                Placeholder(
                  fallbackHeight: 40.0,
                  fallbackWidth: 40.0,
                ),
                Placeholder(
                  fallbackHeight: 40.0,
                  fallbackWidth: 40.0,
                ),
              ],
            ),
            Container(
              child: Image.asset("assets/N288MC.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
