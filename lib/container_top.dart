// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Data.dart';

class CustomTopContainer extends StatefulWidget {
  final String date;
  final String name;
  final String avatar;

  CustomTopContainer(
      {required this.date, required this.name, required this.avatar});

  @override
  _CustomTopContainer createState() => _CustomTopContainer(
        date: date,
        name: name,
        avatar: avatar,
      );
}

class _CustomTopContainer extends State<CustomTopContainer> {
  final String date;
  final String name;
  final String avatar;
  _CustomTopContainer(
      {required this.date, required this.name, required this.avatar});
  String selectedItem = 'Вариант 1';
  List<String> _dropdownItems = [
    'Вариант 1',
    'Вариант 2',
    'Вариант 3',
    'Вариант 4',
  ];
  Color _dropdownBackgroundColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 8),
              Text(
                date,
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.calendar_today,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Text('Статус:'),
                  SizedBox(width: 8),
                  Container(
                    height: 30,
                    padding: EdgeInsets.only(right: 5, left: 5),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedItem,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: Colors.white,
                        ),
                        iconSize: 18,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            selectedItem = newValue!;
                          });
                        },
                        dropdownColor: _dropdownBackgroundColor,
                        items: _dropdownItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 40),
                  Text('Исполнитель:'),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.blue,
                    //backgroundImage: NetworkImage(avatar),
                  ),
                  SizedBox(width: 8),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedItem,
                        icon: Icon(
                          Icons.arrow_drop_down,
                        ),
                        iconSize: 18,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        onChanged: (newValue) {
                          setState(() {
                            selectedItem = newValue!;
                          });
                        },
                        items: _dropdownItems
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
