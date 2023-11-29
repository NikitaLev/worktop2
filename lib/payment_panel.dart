// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'activity_panel.dart';
import 'button_panel.dart';
import 'selector.dart';

class Payment_panel extends StatefulWidget {
  Payment_panel();

  @override
  _Payment_panel createState() => _Payment_panel();
}

class _Payment_panel extends State<Payment_panel> {
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
      padding: EdgeInsets.only(top: 15),
      child: Column(children: [
        Container(
          child: InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(top: 12),
              alignment: Alignment.topCenter,
              child: Row(
                children: [
                  Icon(
                    Icons.edit_square,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Форма оплаты:',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 2, right: 20),
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromARGB(255, 156, 220, 250),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide.none),
            ),
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.blue,
            ),
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.top,
            controller: TextEditingController(text: 'Безнал 2000'),
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            'Счёт: ',
            style: TextStyle(fontSize: 13),
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(bottom: 5),
          child: Selector(
            dropdownItems: _dropdownItems,
            dropdownBackgroundColor: _dropdownBackgroundColor,
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Text(
            'Комиссия: ',
            style: TextStyle(fontSize: 13),
          ),
        ),
        Container(
          height: 30,
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 4, right: 20),
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
      ]),
    );
  }
}
