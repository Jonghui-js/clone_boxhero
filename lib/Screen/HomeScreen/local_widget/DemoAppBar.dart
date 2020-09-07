import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DemoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('데모 종료');
        showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return CupertinoActionSheet(
                  actions: [
                    CupertinoActionSheetAction(
                      onPressed: () => print('데모 종료'),
                      child: Text('데모 종료'),
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    child: Text('취소'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ));
            });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.grey[700],
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '데모 버전 체험 중 입니다.',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              '데모 종료',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
