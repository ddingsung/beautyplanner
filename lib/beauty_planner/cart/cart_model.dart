import '/backend/api_requests/api_calls.dart';
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

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetUserCart)] action in cart widget.
  ApiCallResponse? apiResulth7a;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  Map<dynamic, bool> checkboxValueMap2 = {};
  List<dynamic> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

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
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
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
