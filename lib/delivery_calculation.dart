// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Delivery_calculation extends StatefulWidget {
  Delivery_calculation();

  @override
  _Delivery_calculation createState() => _Delivery_calculation();
}

class _Delivery_calculation extends State<Delivery_calculation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 52, left: 5, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              'Расчёт доставок: ',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  'Фрахт: 91000 1км:',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 25,
                width: 60,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 5),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.top,
                  controller: TextEditingController(text: ''),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(top: 5, right: 3, bottom: 5),
                    child: Text(
                      'За доп. выгрузку:',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    alignment: Alignment.topLeft,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '1 выгрузка',
                        style: TextStyle(fontSize: 8, color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
                width: 60,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                  left: 5,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.top,
                  controller: TextEditingController(text: ''),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(top: 40, bottom: 5),
            child: Text(
              'Забрать водителю: ',
              style: TextStyle(fontSize: 11),
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 4, right: 20),
            child: TextField(
              enabled: false,
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
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(
              'Информация для водителя: ',
              style: TextStyle(fontSize: 11),
            ),
          ),
          Container(
            height: 30,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 4, right: 20),
            child: TextField(
              enabled: false,
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
        ],
      ),
    );
  }
}
