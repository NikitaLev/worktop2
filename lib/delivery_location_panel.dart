// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'activity_panel.dart';
import 'button_panel.dart';
import 'selector.dart';

class Delivery_location_panel extends StatefulWidget {
  Delivery_location_panel();

  @override
  _Delivery_location_panel createState() => _Delivery_location_panel();
}

class _Delivery_location_panel extends State<Delivery_location_panel> {
  Color _dropdownBackgroundColor = Colors.white;
  List<String> _dropdownItems = [
    'Вариант 1',
    'Вариант 2',
    'Вариант 3',
    'Вариант 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 5, top: 20, bottom: 5),
      color: Color.fromARGB(255, 178, 220, 255),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 25, bottom: 5),
            child: Text(
              'Место доставки: ',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 25, bottom: 5),
            child: Selector(
                dropdownItems: _dropdownItems,
                dropdownBackgroundColor: _dropdownBackgroundColor),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 2),
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Получить ФИО:',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 25, bottom: 5, top: 5),
            child: Selector(
                dropdownItems: _dropdownItems,
                dropdownBackgroundColor: _dropdownBackgroundColor),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 2),
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Телефон',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 25, bottom: 5, top: 5),
            child: Text(
              '+375293753753',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(left: 25, bottom: 5, top: 5),
            child: Text(
              '+375293753753',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
