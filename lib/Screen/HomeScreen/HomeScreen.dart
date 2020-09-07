import 'package:clone_boxhero/Model/CustomCategory.dart';
import 'package:clone_boxhero/Screen/HomeScreen/local_widget/BlueSign.dart';
import 'package:clone_boxhero/Screen/HomeScreen/local_widget/DemoAppBar.dart';
import 'package:clone_boxhero/Screen/HomeScreen/local_widget/ReorderScreen.dart';
import 'package:clone_boxhero/Screen/HomeScreen/local_widget/containerDeco.dart';
import 'package:clone_boxhero/preferences.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ReorderScreen reorderScreen = ReorderScreen();
  final controller = PageController(viewportFraction: 1.0);
  ScrollController _appBarController = ScrollController();
  bool sliverCollapsed = false;

  String centerTitle = "";
  String leftTitle = '홈';
  List listTitle;

  _screenAppBarTransition(
    String title,
    ScrollController appBarController,
  ) {
    appBarController.addListener(() {
      if (appBarController.offset > 50 &&
          !appBarController.position.outOfRange) {
        if (!sliverCollapsed) {
          centerTitle = title;
          leftTitle = '';
          sliverCollapsed = true;
          setState(() {});
        }
      }

      if (appBarController.offset <= 50 &&
          !appBarController.position.outOfRange) {
        if (sliverCollapsed) {
          centerTitle = '';
          leftTitle = title;
          sliverCollapsed = false;
          setState(() {});
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    listTitle = UserPreferences().homeCustomList;
    int removeindex = listTitle.indexOf('remove');
    listTitle = listTitle.sublist(0, removeindex);
    _screenAppBarTransition('홈', _appBarController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        controller: _appBarController,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0.0,
            collapsedHeight: 60,
            expandedHeight: 110,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 20, bottom: 10),
              collapseMode: CollapseMode.none,
              centerTitle: false,
              title: Text(
                leftTitle,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            pinned: true,
            actions: [
              IconButton(
                icon: Icon(LineAwesomeIcons.plus),
                onPressed: () async {
                  List newList = await Navigator.push(
                    context,
                    MaterialPageRoute<List>(
                      builder: (BuildContext context) => reorderScreen,
                      fullscreenDialog: true,
                    ),
                  );
                  int removeindex = newList.indexOf('remove');
                  var data = newList.sublist(0, removeindex);
                  setState(() {
                    listTitle = data;
                  });
                },
              ),
              IconButton(
                icon: Icon(LineAwesomeIcons.bell),
                onPressed: () {},
              ),
            ],
            centerTitle: true,
            title: Text(
              centerTitle,
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
          SliverToBoxAdapter(
            child: DemoAppBar(),
          ),
          SliverToBoxAdapter(child: BlueSign()),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
              decoration: containerDeco,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(LineAwesomeIcons.search),
                    title: Text('제품 검색'),
                    trailing: Icon(
                      LineAwesomeIcons.expand,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => homeCustomMap[listTitle[index]],
                childCount: listTitle.length),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
              decoration: containerDeco,
              padding: EdgeInsets.all(10),
              child: InkWell(
                onTap: () async {
                  List newList = await Navigator.push(
                    context,
                    MaterialPageRoute<List>(
                      builder: (BuildContext context) => reorderScreen,
                      fullscreenDialog: true,
                    ),
                  );
                  int removeindex = newList.indexOf('remove');
                  var data = newList.sublist(0, removeindex);
                  setState(() {
                    listTitle = data;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      width: 10,
                    ),
                    Text('추가하기')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
