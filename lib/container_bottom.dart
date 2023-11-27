import 'package:flutter/material.dart';

import 'Data.dart';
import 'contractor.dart';
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
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Transport(transports: transports),
                ),
                Expanded(
                  flex: 7,
                  child: Center(
                    child: Contractor(data: data),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(widget.data.manufacturer),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                // Нижняя часть контейнера
                ),
          ),
        ],
      ),
    );
  }
}
