import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences {
  static final UserPreferences _instance = UserPreferences._ctor();
  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._ctor();
  SharedPreferences _prefs;

  init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  get homeCustomList {
    return _prefs.getStringList('homeCustomList') ??
        [
          '제품 등록',
          '입고/출고',
          '재고 부족 알림',
          '재고조사',
          '멤버 추가',
          'remove',
          '대시보드',
        ];
  }

  set homeCustomList(List<String> list) {
    _prefs.setStringList('homeCustomList', list);
  }
}
