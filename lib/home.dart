import "package:flutter/material.dart";

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: EdgeInsets.fromLTRB(30, 80, 30, 0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                )
              ],
            ),
            Divider(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                ),
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}
