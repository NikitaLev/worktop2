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
    return Container(
        child: Row(
      children: [
        Expanded(
          flex: 10,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 500,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Transport(
                            transports: transports,
                            transport: transport,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 11,
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: Contractor(data: data),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Activity_panel(),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: EdgeInsets.only(bottom: 50, right: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Delivery_calculation(),
                ),
                Container(
                  height: 100,
                  child: Button_panel(),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
