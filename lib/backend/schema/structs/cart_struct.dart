// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartStruct extends BaseStruct {
  CartStruct({
    int? cartId,
    DateTime? cartCreatedAt,
    List<ProductAllStruct>? products,
    String? cartCategory,
  })  : _cartId = cartId,
        _cartCreatedAt = cartCreatedAt,
        _products = products,
        _cartCategory = cartCategory;

  // "cart_id" field.
  int? _cartId;
  int get cartId => _cartId ?? 0;
  set cartId(int? val) => _cartId = val;

  void incrementCartId(int amount) => cartId = cartId + amount;

  bool hasCartId() => _cartId != null;

  // "cart_created_at" field.
  DateTime? _cartCreatedAt;
  DateTime? get cartCreatedAt => _cartCreatedAt;
  set cartCreatedAt(DateTime? val) => _cartCreatedAt = val;

  bool hasCartCreatedAt() => _cartCreatedAt != null;

  // "products" field.
  List<ProductAllStruct>? _products;
  List<ProductAllStruct> get products => _products ?? const [];
  set products(List<ProductAllStruct>? val) => _products = val;

  void updateProducts(Function(List<ProductAllStruct>) updateFn) {
    updateFn(_products ??= []);
  }

  bool hasProducts() => _products != null;

  // "cart_category" field.
  String? _cartCategory;
  String get cartCategory => _cartCategory ?? '';
  set cartCategory(String? val) => _cartCategory = val;

  bool hasCartCategory() => _cartCategory != null;

  static CartStruct fromMap(Map<String, dynamic> data) => CartStruct(
        cartId: castToType<int>(data['cart_id']),
        cartCreatedAt: data['cart_created_at'] as DateTime?,
        products: getStructList(
          data['products'],
          ProductAllStruct.fromMap,
        ),
        cartCategory: data['cart_category'] as String?,
      );

  static CartStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'cart_id': _cartId,
        'cart_created_at': _cartCreatedAt,
        'products': _products?.map((e) => e.toMap()).toList(),
        'cart_category': _cartCategory,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cart_id': serializeParam(
          _cartId,
          ParamType.int,
        ),
        'cart_created_at': serializeParam(
          _cartCreatedAt,
          ParamType.DateTime,
        ),
        'products': serializeParam(
          _products,
          ParamType.DataStruct,
          isList: true,
        ),
        'cart_category': serializeParam(
          _cartCategory,
          ParamType.String,
        ),
      }.withoutNulls;

  static CartStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartStruct(
        cartId: deserializeParam(
          data['cart_id'],
          ParamType.int,
          false,
        ),
        cartCreatedAt: deserializeParam(
          data['cart_created_at'],
          ParamType.DateTime,
          false,
        ),
        products: deserializeStructParam<ProductAllStruct>(
          data['products'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductAllStruct.fromSerializableMap,
        ),
        cartCategory: deserializeParam(
          data['cart_category'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CartStruct &&
        cartId == other.cartId &&
        cartCreatedAt == other.cartCreatedAt &&
        listEquality.equals(products, other.products) &&
        cartCategory == other.cartCategory;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([cartId, cartCreatedAt, products, cartCategory]);
}

CartStruct createCartStruct({
  int? cartId,
  DateTime? cartCreatedAt,
  String? cartCategory,
}) =>
    CartStruct(
      cartId: cartId,
      cartCreatedAt: cartCreatedAt,
      cartCategory: cartCategory,
    );
