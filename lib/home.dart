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
      body: Container(
        child: Center(
          child: Text(
            "Hi",
          ),
        ),
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}
