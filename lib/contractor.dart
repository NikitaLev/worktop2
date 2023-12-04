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
  List<Widget> containers_inner_container = [];
  _Contractor() {
    containers_inner_container.add(
      Inner_container(
          selectedItem: selectedItem,
          count: count,
          dropdownItems: _dropdownItems,
          dropdownItems2: _dropdownItems2,
          transport: transport,
          transports: transports,
          containersManufacturer: containers_manufacturer,
          containersDeliveryLocation: containers_delivery_location),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: IntrinsicWidth(
          child: Column(
            children: [
              Container(
                child: IntrinsicWidth(
                  child: Column(children: [
                    ...containers_inner_container,
                  ]),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      containers_inner_container.add(
                        Inner_container(
                            selectedItem: selectedItem,
                            count: count,
                            dropdownItems: _dropdownItems,
                            dropdownItems2: _dropdownItems2,
                            transport: transport,
                            transports: transports,
                            containersManufacturer: containers_manufacturer,
                            containersDeliveryLocation:
                                containers_delivery_location),
                      );
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
        ),
      ),
    );
  }
}

class Inner_container extends StatefulWidget {
  Color _dropdownBackgroundColor = Colors.white;
  String selectedItem = 'Вариант 1';
  int count = 1;
  List<String> _dropdownItems = [];
  List<String> _dropdownItems2 = [];
  static Map<String, bool> transport = {};
  List<Map<String, bool>> transports = [];
  List<Widget> containers_manufacturer = [];
  List<Widget> containers_delivery_location = [];

  Inner_container({
    required String selectedItem,
    required int count,
    required List<String> dropdownItems,
    required List<String> dropdownItems2,
    required Map<String, bool> transport,
    required List<Map<String, bool>> transports,
    required List<Widget> containersManufacturer,
    required List<Widget> containersDeliveryLocation,
  }) {
    this.selectedItem = selectedItem ?? this.selectedItem;
    this.count = count ?? this.count;
    this._dropdownItems = dropdownItems ?? this._dropdownItems;
    this._dropdownItems2 = dropdownItems2 ?? this._dropdownItems2;
    Inner_container.transport = transport ?? Inner_container.transport;
    this.transports = transports ?? this.transports;
    this.containers_manufacturer =
        containersManufacturer ?? this.containers_manufacturer;
    this.containers_delivery_location =
        containersDeliveryLocation ?? this.containers_delivery_location;
  }

  @override
  _Inner_container createState() => _Inner_container();
}

class _Inner_container extends State<Inner_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 230, 247, 255),
            borderRadius: BorderRadius.circular(4),
            border:
                Border.all(color: Color.fromARGB(255, 142, 204, 255), width: 2),
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
                      ...widget.containers_manufacturer,
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              widget.containers_manufacturer.add(
                                Manufacturer_panel(),
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
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ...widget.containers_delivery_location,
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              widget.containers_delivery_location.add(
                                Delivery_location_panel(),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
