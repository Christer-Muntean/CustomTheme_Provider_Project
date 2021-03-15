import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppTheme with ChangeNotifier {
  bool _isDarkMode = false;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    setColors();
    notifyListeners();
  }

  Color _textColor;
  Color get textColor => _textColor;

  Color _backgroundColor;
  Color get backgroundColor => _backgroundColor;

  void setColors(){
    _textColor = _isDarkMode ? Colors.white : Colors.black;
    _backgroundColor = _isDarkMode ? Colors.black : Colors.white;
  }

  static AppTheme of(BuildContext context){
    return context.watch<AppTheme>();
  }
}