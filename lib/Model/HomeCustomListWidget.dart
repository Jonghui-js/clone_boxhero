import 'package:clone_boxhero/Screen/HomeScreen/local_widget/containerDeco.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AddGoodsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: containerDeco,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '제품 등록',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(LineAwesomeIcons.barcode),
            title: Text('제품 등록하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

class InOutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: containerDeco,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '입고/추가',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.arrow_circle_down,
              color: Colors.blue,
            ),
            title: Text('입고하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            leading: Icon(
              LineAwesomeIcons.arrow_circle_up,
              color: Colors.red,
            ),
            title: Text('출고하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.cached,
              color: Colors.green,
            ),
            title: Text('조정하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

class OutOfStockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: containerDeco,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '재고 부족 알림',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(LineAwesomeIcons.suitcase_rolling, color: Colors.red),
            title: Text('재고 부족한 제품 확인하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

class InventoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: containerDeco,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '재고조사',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(LineAwesomeIcons.expand, color: Colors.red),
            title: Text('스캔으로 재고 조사하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

class InviteMemberWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: containerDeco,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '멤버 추가',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(LineAwesomeIcons.user_plus, color: Colors.black),
            title: Text('우리팀에 멤버 추가하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

class DashBoardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 10),
      decoration: containerDeco,
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text(
              '대시보드',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          ListTile(
            leading: Icon(LineAwesomeIcons.bar_chart, color: Colors.black),
            title: Text('재고 현황 분석하기'),
            trailing: Icon(
              Icons.keyboard_arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

class RemoveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}
