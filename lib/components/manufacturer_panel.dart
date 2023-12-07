// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'activity_panel.dart';
import 'button_panel.dart';
import 'product_panel.dart';
import 'selector.dart';

class Manufacturer_panel extends StatefulWidget {
  Manufacturer_panel();

  @override
  _Manufacturer_panel createState() => _Manufacturer_panel();
}

class _Manufacturer_panel extends State<Manufacturer_panel> {
  Color _dropdownBackgroundColor = Colors.white;
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
  List<Widget> containers_product = [
    Product_panel(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, top: 20, bottom: 5),
      padding: EdgeInsets.only(right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 206, 232, 253),
      ),
      child: Container(
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
                  dropdownBackgroundColor: _dropdownBackgroundColor),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            containers_product.add(
                              Product_panel(),
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
                                'Продукт',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.black),
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
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'поддоны',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        'шт',
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ...containers_product,
          ],
        ),
      ),
    );
  }
}
