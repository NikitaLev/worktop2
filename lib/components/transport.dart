import 'package:flutter/material.dart';

class Transport extends StatefulWidget {
  List<Map<String, bool>> transportss = [];

  Transport({
    required List<Map<String, bool>> transports,
  }) {
    transportss = transports;
    print(transportss.length);
  }

  @override
  _Transport createState() => _Transport();
}

class _Transport extends State<Transport> {
  Map<String, bool> defaultTransport = {
    'Тягач': false,
    'Тяжелогруз': false,
    'Жд вагоны': false
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50, top: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: widget.transportss.map((t) {
              return Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 5),
                    child: const Text(
                      'Тип транспорта: ',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Column(
                    children: t.keys.map((String str) {
                      bool val = t[str]!;
                      return Row(
                        children: [
                          Container(
                            child: Checkbox(
                              fillColor: MaterialStateProperty.all<Color>(
                                val
                                    ? Colors.blue
                                    : Color.fromARGB(255, 184, 221, 252),
                              ),
                              overlayColor: MaterialStateProperty.all<Color>(
                                Colors.white,
                              ),
                              value: val,
                              activeColor: Colors.blue,
                              checkColor: Colors.blue,
                              side: BorderSide.none,
                              onChanged: (value) {
                                setState(() {
                                  for (String key in t.keys) {
                                    t[key] = false; // Unselect all options
                                  }
                                  t[str] = value!;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 8.0),
                          Text(
                            str,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ],
              );
            }).toList(),
          ),
          InkWell(
            onTap: () {
              setState(() {
                // Create a new instance of Map<String, bool> for the new transport
                Map<String, bool> newTransport = Map.from(defaultTransport);
                widget.transportss.add(newTransport);
                print(widget.transportss);
              });
            },
            child: Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.topCenter,
              child: const Row(
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
        ],
      ),
    );
  }
}
