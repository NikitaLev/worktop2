import 'package:flutter/material.dart';

import 'Data.dart';
import 'activity_panel.dart';
import 'button_panel.dart';
import 'contractor.dart';
import 'delivery_calculation.dart';
import 'panel_bottom.dart';
import 'transport.dart';

class CustomBottomContainer extends StatefulWidget {
  final Data data;

  CustomBottomContainer({required this.data});

  @override
  _CustomBottomContainerState createState() => _CustomBottomContainerState();
}

class _CustomBottomContainerState extends State<CustomBottomContainer> {
  Data data = Data(name: 'name', phone: 'phone', manufacturer: 'manufacturer');
  static Map<String, bool> transport = {
    'Тягач': false,
    'Тяжелогруз': false,
    'Жд вагоны': false
  };
  List<Map<String, bool>> transports = [transport, transport];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(right: 200),
                width: 1800,
                height: 500,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: IntrinsicWidth(
                        child: Transport(
                          transports: transports,
                          transport: transport,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 11,
                      child: IntrinsicWidth(
                        child: Contractor(data: data),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 50, right: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Activity_panel(),
                    ),
                    Container(
                      height: 100,
                      child: Button_panel(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 20, // Позиционирование по вертикали
            right: 20, // Позиционирование по горизонтали
            child: Container(
              width: 200,
              height: 400,
              child: Delivery_calculation(),
              // Добавьте сюда содержимое малого контейнера
            ),
          ),
        ],
      ),
    );
  }
}
