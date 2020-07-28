import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "N288MC",
          style: TextStyle(
            fontFamily: "Montserrat",
          ),
        ),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image(
                  image: AssetImage("assets/N288MC.jpg"),
                  height: MediaQuery.of(context).size.height * (0.35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
