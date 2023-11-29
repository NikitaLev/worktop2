// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'activity_panel.dart';
import 'button_panel.dart';
import 'selector.dart';

class Counterparty_panel extends StatefulWidget {
  Counterparty_panel();

  @override
  _Counterparty_panel createState() => _Counterparty_panel();
}

class _Counterparty_panel extends State<Counterparty_panel> {
  Color _dropdownBackgroundColor = Colors.white;
  List<String> _dropdownItems = [
    'Вариант 1',
    'Вариант 2',
    'Вариант 3',
    'Вариант 4',
  ];

  List<Widget> containers_phone = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 25, bottom: 5),
              child: Text(
                'Контрагент: ',
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
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 25, bottom: 5),
              child: Text(
                'Менеджер: ',
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
                onTap: () {
                  setState(() {
                    containers_phone.add(
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
                    );
                  });
                },
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
            ...containers_phone,
          ],
        ),
      ),
    );
  }
}
