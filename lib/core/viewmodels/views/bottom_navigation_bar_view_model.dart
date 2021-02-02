import 'package:flutter/cupertino.dart';
import 'package:match_work/ui/widgets/tabs/profile.dart';
import 'package:match_work/ui/widgets/tabs/swipe.dart';
import 'package:match_work/ui/widgets/tabs/chat.dart';

import '../base_model.dart';

class BottomNavigationBarViewModel extends BaseModel {
  int _currentTab = 1;

  List<Widget> _screens = [Profile(), Swipe(), Chat()];
  set currentTab(int tab) {
    this._currentTab = tab;
    notifyListeners();
  }

  get currentTab => this._currentTab;
  get currentScreen => this._screens[this._currentTab];

}
