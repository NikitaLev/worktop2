// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Transport extends StatefulWidget {
  List<Map<String, bool>> transportss = [];

  Transport({required List<Map<String, bool>> transports}) {
    transportss = transports;
    print(transportss.length);
  }

  @override
  _Transport createState() => _Transport();
}

class _Transport extends State<Transport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 52, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Expanded(
              child: ListView.builder(
                itemCount: widget.transportss.length,
                itemBuilder: (BuildContext context, int index) {
                  Map<String, bool> t = widget.transportss[index];
                  return Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Тип транспорта: ',
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: t.length,
                        itemBuilder: (BuildContext context, int innerIndex) {
                          String str = t.keys.toList()[innerIndex];
                          bool val = t.values.toList()[innerIndex];
                          return Row(
                            children: [
                              Container(
                                child: Checkbox(
                                  fillColor: MaterialStateProperty.all<Color>(
                                      val
                                          ? Colors.blue
                                          : Color.fromARGB(255, 184, 221, 252)),
                                  overlayColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  value: val,
                                  activeColor: Colors.blue,
                                  checkColor: Colors.blue,
                                  side: BorderSide.none,
                                  onChanged: (value) {
                                    setState(() {
                                      val = value!;
                                      widget.transportss[index][str] = val;
                                    });
                                  },
                                ),
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                str,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
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
                      'Транспорт',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Expanded(
              child: Container(),
            ),
          )
        ],
      ),
    );
  }
}
