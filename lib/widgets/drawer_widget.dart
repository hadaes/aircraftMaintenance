import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Stack(
            children: [
              Container(
                color: Theme.of(context).primaryColor,
                height: MediaQuery.of(context).size.height,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, "/");
                        },
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, "/about");
                        },
                        child: Text(
                          "About",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
