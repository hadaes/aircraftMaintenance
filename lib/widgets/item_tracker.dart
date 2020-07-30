import "package:flutter/material.dart";
import "dart:convert";
import "dart:io";
import "package:flutter/services.dart";
import "package:path_provider/path_provider.dart";
import "dart:async";

class ItemTracker extends StatefulWidget {
  @override
  _ItemTrackerState createState() => _ItemTrackerState();
}

class _ItemTrackerState extends State<ItemTracker> {
  DateTime _date = DateTime.now();

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/due_dates.json');
  }

  Future<Map<String,int>> get _read async {
    File file = await _localFile;
    String text = await file.readAsString();
    Map<String,int> dateMap = json.decode(text);
    return dateMap;
  }

  Future<Null> selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(_date.year),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _date) {
      setState(() {
        _date = picked;
      });
      Map<String, int> jsonMap = {
        "day": _date.day,
        "month": _date.month,
        "year": _date.year,
      };
      try {
        File file = await _localFile;
        String jsonString = json.encode(jsonMap);
        await file.writeAsString(jsonString);
      } catch (e) {
        print("Error $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Item",
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
          Text(_date == DateTime.now() ?
            "${_date.month} - ${_date.day} - ${_date.year}" : "$_date[""," //fix this
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
