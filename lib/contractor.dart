// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'Data.dart';
import 'counterparty_panel.dart';
import 'delivery_location_panel.dart';
import 'manufacturer_panel.dart';
import 'payment_panel.dart';
import 'selector.dart';
import 'transport.dart';

class Contractor extends StatefulWidget {
  final Data data;

  Contractor({required this.data});

  @override
  _Contractor createState() => _Contractor();
}

class _Contractor extends State<Contractor> {
  Color _dropdownBackgroundColor = Colors.white;
  String selectedItem = 'Вариант 1';
  int count = 1;
  List<String> _dropdownItems = [
    'Вариант 1',
    'Вариант 2',
    'Вариант 3',
    'Вариант 4',
  ];
  List<String> _dropdownItems2 = [
    'В 1',
    'В 2',
    'В 3',
  ];
  static Map<String, bool> transport = {
    'Тягач': false,
    'Тяжелогруз': false,
    'Жд вагоны': false
  };
  List<Map<String, bool>> transports = [
    transport,
  ];
  List<Widget> containers_manufacturer = [
    Manufacturer_panel(),
  ];
  List<Widget> containers_delivery_location = [
    Delivery_location_panel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            height: 400,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 400,
                  child: Expanded(
                    child: ListView.builder(
                        itemCount: count,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            padding: EdgeInsets.only(top: 10),
                            height: 300,
                            child: Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 230, 247, 255),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 142, 204, 255),
                                      width: 2),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Counterparty_panel(),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Payment_panel(),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: SingleChildScrollView(
                                          child: Column(children: [
                                            ...containers_manufacturer,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    containers_manufacturer.add(
                                                      Manufacturer_panel(),
                                                    );
                                                  });
                                                },
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.only(top: 2),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .add_circle_outline,
                                                        color: Colors.blue,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        'Производитель',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: SingleChildScrollView(
                                          child: Column(children: [
                                            ...containers_delivery_location,
                                            Container(
                                              padding:
                                                  EdgeInsets.only(left: 20),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    containers_delivery_location
                                                        .add(
                                                      Delivery_location_panel(),
                                                    );
                                                  });
                                                },
                                                child: Container(
                                                  padding:
                                                      EdgeInsets.only(top: 2),
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .add_circle_outline,
                                                        color: Colors.blue,
                                                      ),
                                                      SizedBox(width: 5),
                                                      Text(
                                                        'Место доставки',
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ]),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {
                setState(() {
                  count++;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 10),
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Контрагент',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
