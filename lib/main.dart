// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'Data.dart';
import 'container_bottom.dart';
import 'container_top.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Data data = Data(name: 'name', phone: 'phone', manufacturer: 'manufacturer');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.blue,
                  ),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Имя Фамилия',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        'Должность',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Container(
                margin: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: CustomTopContainer(
                  date: '26 ноября 2023',
                  name: 'Иван Иванов',
                  avatar:
                      'https://sun9-79.userapi.com/impg/7OKhfylGY0Ayh_bALsDZItbJNCQr9TGg8u9bpA/2i8eUL4JIxA.jpg?size=914x899&quality=95&sign=1eb37fa31e951e84fbd76102802ae887&type=album',
                ),
              ),
            ),
            Container(
              child: Expanded(
                flex: 9,
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: CustomBottomContainer(data: data),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
