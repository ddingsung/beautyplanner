import '/backend/api_requests/api_calls.dart';
import '/components/cart_product_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cart_widget.dart' show CartWidget;
import 'package:flutter/material.dart';

class CartModel extends FlutterFlowModel<CartWidget> {
  ///  Local state fields for this page.

  double? totalDiscountedPrice;

  List<int> count = [];
  void addToCount(int item) => count.add(item);
  void removeFromCount(int item) => count.remove(item);
  void removeAtIndexFromCount(int index) => count.removeAt(index);
  void insertAtIndexInCount(int index, int item) => count.insert(index, item);
  void updateCountAtIndex(int index, Function(int) updateFn) =>
      count[index] = updateFn(count[index]);

  List<dynamic> cartList = [];
  void addToCartList(dynamic item) => cartList.add(item);
  void removeFromCartList(dynamic item) => cartList.remove(item);
  void removeAtIndexFromCartList(int index) => cartList.removeAt(index);
  void insertAtIndexInCartList(int index, dynamic item) =>
      cartList.insert(index, item);
  void updateCartListAtIndex(int index, Function(dynamic) updateFn) =>
      cartList[index] = updateFn(cartList[index]);

  List<dynamic> checkedList = [];
  void addToCheckedList(dynamic item) => checkedList.add(item);
  void removeFromCheckedList(dynamic item) => checkedList.remove(item);
  void removeAtIndexFromCheckedList(int index) => checkedList.removeAt(index);
  void insertAtIndexInCheckedList(int index, dynamic item) =>
      checkedList.insert(index, item);
  void updateCheckedListAtIndex(int index, Function(dynamic) updateFn) =>
      checkedList[index] = updateFn(checkedList[index]);

  List<double> testPrice = [];
  void addToTestPrice(double item) => testPrice.add(item);
  void removeFromTestPrice(double item) => testPrice.remove(item);
  void removeAtIndexFromTestPrice(int index) => testPrice.removeAt(index);
  void insertAtIndexInTestPrice(int index, double item) =>
      testPrice.insert(index, item);
  void updateTestPriceAtIndex(int index, Function(double) updateFn) =>
      testPrice[index] = updateFn(testPrice[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetUserCart)] action in cart widget.
  ApiCallResponse? apiResulth7a;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // Models for cartProduct dynamic component.
  late FlutterFlowDynamicModels<CartProductModel> cartProductModels;
  // State field(s) for addressSaveCheckBox widget.
  bool? addressSaveCheckBoxValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;

  @override
  void initState(BuildContext context) {
    cartProductModels = FlutterFlowDynamicModels(() => CartProductModel());
  }

  @override
  void dispose() {
    cartProductModels.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
