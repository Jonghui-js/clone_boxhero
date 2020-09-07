import 'package:clone_boxhero/Model/HomeCustomListWidget.dart';
import 'package:flutter/material.dart';

Map<String, Widget> homeCustomMap = {
  '입고/출고': InOutWidget(),
  '재고 부족 알림': OutOfStockWidget(),
  '재고조사': InventoryWidget(),
  '멤버 추가': InviteMemberWidget(),
  '제품 등록': AddGoodsWidget(),
  '대시보드': DashBoardWidget(),
  'remove': Divider(),
};
