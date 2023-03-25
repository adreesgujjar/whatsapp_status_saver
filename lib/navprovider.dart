import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class BottomNavProvider extends ChangeNotifier {
  int currentindex = 0;

  void changeindex(int value) {
    currentindex = value;
    notifyListeners();
  }
}
