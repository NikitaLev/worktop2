import 'package:flutter/material.dart';

import 'Data.dart';
import 'transport.dart';

class Contractor extends StatefulWidget {
  final Data data;

  Contractor({required this.data});

  @override
  _Contractor createState() => _Contractor();
}

class _Contractor extends State<Contractor> {
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
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(widget.data.phone),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(widget.data.phone),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(widget.data.phone),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.white,
                      child: Center(
                        child: Text(widget.data.phone),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Expanded(
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.blue,
                ),
                label: Text(
                  'Транспорт',
                  style: TextStyle(color: Colors.blue),
                ),
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide.none,
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
