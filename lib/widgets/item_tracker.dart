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
      print(_date.toString());
      setState(() {
        _date = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text("Set date"),
        onPressed: () {
          selectDate(context);
        },
      ),
    );
  }
}
