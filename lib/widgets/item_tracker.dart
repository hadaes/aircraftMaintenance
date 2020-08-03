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
      if (value != null && value.containsKey(widget.item)) {
        var loadedDate = DateTime(value["${widget.item}"]["year"],
            value["${widget.item}"]["month"], value["${widget.item}"]["day"]);
        // print(value); debug statement
        setState(() {
          _date = loadedDate;
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
        "${widget.item}": {
          "day": picked.day,
          "month": picked.month,
          "year": picked.year
        }
      };
      FileUtilis.saveToFile(jsonMap);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: <Widget>[
          Text(
            widget.item,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Montserrat"),
            maxLines: 1,
          ),
          RaisedButton(
            color: Colors.black,
            child: Text(
              "Set date",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.2,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
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
            maxLines: 2,
            overflow: TextOverflow.fade,
          ),
        ],
      ),
    );
  }
}
