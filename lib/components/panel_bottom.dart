// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'activity_panel.dart';
import 'button_panel.dart';

class Panel_bottom extends StatefulWidget {
  Panel_bottom();

  @override
  _Panel_bottom createState() => _Panel_bottom();
}

class _Panel_bottom extends State<Panel_bottom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 52, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Activity_panel(),
          Button_panel(),
        ],
      ),
    );
  }
}
