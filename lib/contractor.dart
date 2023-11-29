// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'Data.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 247, 255),
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                    color: Color.fromARGB(255, 142, 204, 255), width: 2),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Column(
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
                                dropdownBackgroundColor:
                                    _dropdownBackgroundColor),
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
                                dropdownBackgroundColor:
                                    _dropdownBackgroundColor),
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
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomLeft,
                            padding:
                                EdgeInsets.only(left: 25, bottom: 5, top: 5),
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
                            padding:
                                EdgeInsets.only(left: 25, bottom: 5, top: 5),
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
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
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
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
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
                              fillColor:
                                  const Color.fromARGB(255, 156, 220, 250),
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
                            controller:
                                TextEditingController(text: 'Безнал 2000'),
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
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(
                            right: 5, left: 5, top: 20, bottom: 5),
                        color: Color.fromARGB(255, 178, 220, 255),
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(left: 25, bottom: 5),
                              child: Text(
                                'Производитель: ',
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(left: 25, bottom: 5),
                              child: Selector(
                                  dropdownItems: _dropdownItems,
                                  dropdownBackgroundColor:
                                      _dropdownBackgroundColor),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Container(
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
                                                'Продукт',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.black),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'м³',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'поддоны',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'шт',
                                        style: TextStyle(
                                            fontSize: 13, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 20, top: 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Selector(
                                        dropdownItems: _dropdownItems2,
                                        dropdownBackgroundColor:
                                            _dropdownBackgroundColor,
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
                                          dropdownBackgroundColor:
                                              _dropdownBackgroundColor),
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
                                          fillColor: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.blue,
                                        ),
                                        textAlign: TextAlign.left,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        controller:
                                            TextEditingController(text: ''),
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
                                          fillColor: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.blue,
                                        ),
                                        textAlign: TextAlign.left,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        controller:
                                            TextEditingController(text: ''),
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
                                          fillColor: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.blue,
                                        ),
                                        textAlign: TextAlign.left,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        controller:
                                            TextEditingController(text: ''),
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
                                          fillColor: Color.fromARGB(
                                              255, 255, 255, 255),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5.0),
                                          ),
                                        ),
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.blue,
                                        ),
                                        textAlign: TextAlign.left,
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        controller:
                                            TextEditingController(text: ''),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
                                  'Производитель',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.only(
                              right: 5, left: 5, top: 20, bottom: 5),
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
                                    dropdownBackgroundColor:
                                        _dropdownBackgroundColor),
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
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(
                                    left: 25, bottom: 5, top: 5),
                                child: Selector(
                                    dropdownItems: _dropdownItems,
                                    dropdownBackgroundColor:
                                        _dropdownBackgroundColor),
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
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.bottomLeft,
                                padding: EdgeInsets.only(
                                    left: 25, bottom: 5, top: 5),
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
                                padding: EdgeInsets.only(
                                    left: 25, bottom: 5, top: 5),
                                child: Text(
                                  '+375293753753',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          )),
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
                                  'Место доставки',
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: InkWell(
              onTap: () {},
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
