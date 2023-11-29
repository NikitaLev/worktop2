// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'activity_panel.dart';
import 'button_panel.dart';
import 'selector.dart';

class Product_panel extends StatefulWidget {
  Product_panel();

  @override
  _Product_panel createState() => _Product_panel();
}

class _Product_panel extends State<Product_panel> {
  Color _dropdownBackgroundColor = Colors.white;
  List<String> _dropdownItems2 = [
    'В 1',
    'В 2',
    'В 3',
    'В 4',
  ];
  List<String> _dropdownItems = [
    'Вар 1',
    'Вар 2',
    'Вар 3',
    'Вар 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 5),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Selector(
                dropdownItems: _dropdownItems2,
                dropdownBackgroundColor: _dropdownBackgroundColor,
                width: 100.0,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Selector(
                  dropdownItems: _dropdownItems,
                  dropdownBackgroundColor: _dropdownBackgroundColor),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 5),
              height: 30,
              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                controller: TextEditingController(text: ''),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 5),
              height: 30,
              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                controller: TextEditingController(text: ''),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(right: 5),
              height: 30,
              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                controller: TextEditingController(text: ''),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(right: 5),
              height: 30,
              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.blue,
                ),
                textAlign: TextAlign.left,
                textAlignVertical: TextAlignVertical.top,
                controller: TextEditingController(text: ''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
