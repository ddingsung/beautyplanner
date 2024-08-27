import '/flutter_flow/flutter_flow_util.dart';
import 'cart_product_widget.dart' show CartProductWidget;
import 'package:flutter/material.dart';

class CartProductModel extends FlutterFlowModel<CartProductWidget> {
  ///  Local state fields for this component.

  List<int> count = [];
  void addToCount(int item) => count.add(item);
  void removeFromCount(int item) => count.remove(item);
  void removeAtIndexFromCount(int index) => count.removeAt(index);
  void insertAtIndexInCount(int index, int item) => count.insert(index, item);
  void updateCountAtIndex(int index, Function(int) updateFn) =>
      count[index] = updateFn(count[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
