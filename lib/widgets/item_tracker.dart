import "package:flutter/material.dart";

class ItemTracker extends StatefulWidget {
  @override
  _ItemTrackerState createState() => _ItemTrackerState();
}

class _ItemTrackerState extends State<ItemTracker> {
  DateTime _date = DateTime.now();

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
          Text(
            "${_date.day} - ${_date.month} - ${_date.year}",
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
