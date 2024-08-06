import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _searchBar = prefs.getBool('ff_searchBar') ?? _searchBar;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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

  bool _searchBar = false;
  bool get searchBar => _searchBar;
  set searchBar(bool value) {
    _searchBar = value;
    prefs.setBool('ff_searchBar', value);
  }

  CartStruct _cart =
      CartStruct.fromSerializableMap(jsonDecode('{\"products\":\"[]\"}'));
  CartStruct get cart => _cart;
  set cart(CartStruct value) {
    _cart = value;
  }

  void updateCartStruct(Function(CartStruct) updateFn) {
    updateFn(_cart);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
