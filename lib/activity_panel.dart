// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Activity_panel extends StatefulWidget {
  Activity_panel();

  @override
  _Activity_panel createState() => _Activity_panel();
}

class _Activity_panel extends State<Activity_panel>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 52, left: 80, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 5, bottom: 5),
            child: Text(
              'Активность: ',
              style: TextStyle(fontSize: 13),
            ),
          ),
          Container(
            width: 900,
            height: 150,
            child: MyContainer(),
          )
        ],
      ),
    );
  }
}

class MyContainer extends StatefulWidget {
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: [
              Tab(
                child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Text('Комментарии'),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text('История'),
                ),
              ),
            ],
            tabAlignment: TabAlignment.start,
            indicator: BoxDecoration(
              color: Color.fromARGB(255, 248, 248, 248),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  color: Color.fromARGB(255, 248, 248, 248),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 16,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          height: 30,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(top: 4, right: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.blue,
                            ),
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.top,
                            controller: TextEditingController(text: ''),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.sort,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Color.fromARGB(255, 248, 248, 248),
                    child: Text('История'))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
