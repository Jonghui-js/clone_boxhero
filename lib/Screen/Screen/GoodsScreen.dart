import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class GoodsScreen extends StatefulWidget {
  @override
  _GoodsScreenState createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {
  ScrollController _controller;
  bool silverCollapsed = false;
  String myTitle = "";
  String flexibleText = '홈';

  @override
  void initState() {
    super.initState();

    _controller = ScrollController();

    _controller.addListener(() {
      if (_controller.offset > 50 && !_controller.position.outOfRange) {
        if (!silverCollapsed) {
          // do what ever you want when silver is collapsing !

          myTitle = "홈";
          flexibleText = '';
          silverCollapsed = true;
          setState(() {});
        }
      }
      if (_controller.offset <= 50 && !_controller.position.outOfRange) {
        if (silverCollapsed) {
          // do what ever you want when silver is expanding !

          myTitle = "";
          flexibleText = '홈';
          silverCollapsed = false;
          setState(() {});
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        children: [
          AppBar(
            title: Text(myTitle),
            actions: [
              IconButton(
                icon: Icon(LineAwesomeIcons.plus),
                onPressed: () {
                  print('추가');
                },
              ),
              IconButton(
                icon: Icon(LineAwesomeIcons.bell),
                onPressed: () {
                  print('추가');
                },
              ),
            ],
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('ddd'),
            ),
          ),
        ],
      ),
    );
  }
}
