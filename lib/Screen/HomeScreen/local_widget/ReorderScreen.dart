import 'package:clone_boxhero/preferences.dart';
import 'package:flutter/material.dart';

class ReorderScreen extends StatefulWidget {
  @override
  _ReorderScreenState createState() => new _ReorderScreenState();
}

class _ReorderScreenState extends State<ReorderScreen> {
  List<String> listTitle = UserPreferences().homeCustomList;

  void _onReorder(int oldIndex, int newIndex) {
    setState(
      () {
        if (newIndex > oldIndex) {
          newIndex -= 1;
        }
        final String item = listTitle.removeAt(oldIndex);
        listTitle.insert(newIndex, item);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            UserPreferences().homeCustomList = listTitle;
            Navigator.of(context).pop(listTitle);
          },
        ),
        title: Text(
          "홈 편집",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: ReorderableListView(
          header: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            centerTitle: false,
            title: Text(
              '추가된 바로가기',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          onReorder: _onReorder,
          scrollDirection: Axis.vertical,
          children: List.generate(
            listTitle.length,
            (index) {
              if (listTitle[index] == 'remove') {
                return Divider(
                  key: ValueKey('remove'),
                  thickness: 10,
                );
              }

              return ListTile(
                key: Key('$index'),
                leading: index < listTitle.indexOf('remove')
                    ? Icon(
                        Icons.remove,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.add,
                        color: Colors.green,
                      ),
                title: Text(
                  listTitle[index],
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(Icons.reorder),
              );
            },
          ),
        ),
      ),
    );
  }
}
