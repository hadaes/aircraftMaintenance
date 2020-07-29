import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

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
      ),
    );
  }
}
