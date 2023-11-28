import 'package:flutter/material.dart';

import 'Data.dart';
import 'transport.dart';

class Selector extends StatefulWidget {
  List<String> dropdownItems = [];
  Color dropdownBackgroundColor = Colors.white;
  String selectedItem = 'Вариант 1';
  double width = 0;

  Selector(
      {required dropdownItems,
      required dropdownBackgroundColor,
      width = 150.0}) {
    this.dropdownItems = dropdownItems;
    this.width = width;
    selectedItem = dropdownItems[0];
  }

  @override
  _Selector createState() => _Selector();
}

class _Selector extends State<Selector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: widget.width,
      margin: EdgeInsets.only(
        right: 5,
      ),
      padding: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: widget.selectedItem,
          icon: Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          iconSize: 18,
          style: TextStyle(
            color: Colors.black,
          ),
          onChanged: (newValue) {
            setState(() {
              widget.selectedItem = newValue!;
            });
          },
          dropdownColor: widget.dropdownBackgroundColor,
          items: widget.dropdownItems
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
