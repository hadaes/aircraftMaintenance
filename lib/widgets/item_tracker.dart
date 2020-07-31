import 'package:aircraftMaintenance/classes/file_utilis.dart';
import "package:flutter/material.dart";
import "dart:async";

class ItemTracker extends StatefulWidget {
  final String item;
  ItemTracker({this.item});
  @override
  _ItemTrackerState createState() => _ItemTrackerState();
}

class _ItemTrackerState extends State<ItemTracker> {
  DateTime _date = DateTime.now();
  DateTime loaded;

  @override
  void initState() {
    FileUtilis.readFromFile().then((value) {
      if (value.length > 0) {
        // var loadedDate = DateTime(value["year"], value["month"], value["day"]);
        setState(() {
          _date = DateTime(value["year"], value["month"], value["day"]);
        });
      }
    });
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(_date.year),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _date && loaded == null) {
      setState(() {
        _date = picked;
      });
      Map<String, dynamic> jsonMap = {
        "day": picked.day,
        "month": picked.month,
        "year": picked.year
      };
      FileUtilis.saveToFile(jsonMap);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            widget.item,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat"),
          ),
          RaisedButton(
            color: Colors.black,
            child: Text(
              "Set date",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w800),
            ),
            onPressed: () {
              selectDate(context);
            },
          ),
          Text(
            "Due :  ${_date.month} - ${_date.day} - ${_date.year}",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontFamily: "Montserrat",
            ),
          ),
        ],
      ),
    );
  }
}
