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
    _safeInit(() {
      _date = prefs.containsKey('ff_date')
          ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_date')!)
          : _date;
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

  double _cartTotalPrice = 0.0;
  double get cartTotalPrice => _cartTotalPrice;
  set cartTotalPrice(double value) {
    _cartTotalPrice = value;
  }

  List<double> _cartLastPrice = [];
  List<double> get cartLastPrice => _cartLastPrice;
  set cartLastPrice(List<double> value) {
    _cartLastPrice = value;
  }

  void addToCartLastPrice(double value) {
    cartLastPrice.add(value);
  }

  void removeFromCartLastPrice(double value) {
    cartLastPrice.remove(value);
  }

  void removeAtIndexFromCartLastPrice(int index) {
    cartLastPrice.removeAt(index);
  }

  void updateCartLastPriceAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartLastPrice[index] = updateFn(_cartLastPrice[index]);
  }

  void insertAtIndexInCartLastPrice(int index, double value) {
    cartLastPrice.insert(index, value);
  }

  int _cartProductCount = 0;
  int get cartProductCount => _cartProductCount;
  set cartProductCount(int value) {
    _cartProductCount = value;
  }

  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? value) {
    _date = value;
    value != null
        ? prefs.setInt('ff_date', value.millisecondsSinceEpoch)
        : prefs.remove('ff_date');
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
