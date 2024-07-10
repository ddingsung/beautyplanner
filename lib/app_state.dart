import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _addIndex = 0;
  int get addIndex => _addIndex;
  set addIndex(int value) {
    _addIndex = value;
  }

  String _selectedProductCategory = '';
  String get selectedProductCategory => _selectedProductCategory;
  set selectedProductCategory(String value) {
    _selectedProductCategory = value;
  }
}
