// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartListStruct extends BaseStruct {
  CartListStruct({
    String? userUidInput,
    String? userAddress,
    String? userPhone,
    String? userName,
    String? userZipcode,
    int? cartId,
    String? cartCratedAt,
    String? cartUpdatedAt,
    String? cartProductUid,
    int? cartTotalPrice,
    String? cartStatus,
    int? cartQuantity,
    String? productName,
    int? productPrice,
    int? productDiscount,
  })  : _userUidInput = userUidInput,
        _userAddress = userAddress,
        _userPhone = userPhone,
        _userName = userName,
        _userZipcode = userZipcode,
        _cartId = cartId,
        _cartCratedAt = cartCratedAt,
        _cartUpdatedAt = cartUpdatedAt,
        _cartProductUid = cartProductUid,
        _cartTotalPrice = cartTotalPrice,
        _cartStatus = cartStatus,
        _cartQuantity = cartQuantity,
        _productName = productName,
        _productPrice = productPrice,
        _productDiscount = productDiscount;

  // "user_uid_input" field.
  String? _userUidInput;
  String get userUidInput => _userUidInput ?? '';
  set userUidInput(String? val) => _userUidInput = val;

  bool hasUserUidInput() => _userUidInput != null;

  // "user_address" field.
  String? _userAddress;
  String get userAddress => _userAddress ?? '';
  set userAddress(String? val) => _userAddress = val;

  bool hasUserAddress() => _userAddress != null;

  // "user_phone" field.
  String? _userPhone;
  String get userPhone => _userPhone ?? '';
  set userPhone(String? val) => _userPhone = val;

  bool hasUserPhone() => _userPhone != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "user_zipcode" field.
  String? _userZipcode;
  String get userZipcode => _userZipcode ?? '';
  set userZipcode(String? val) => _userZipcode = val;

  bool hasUserZipcode() => _userZipcode != null;

  // "cart_id" field.
  int? _cartId;
  int get cartId => _cartId ?? 0;
  set cartId(int? val) => _cartId = val;

  void incrementCartId(int amount) => cartId = cartId + amount;

  bool hasCartId() => _cartId != null;

  // "cart_crated_at" field.
  String? _cartCratedAt;
  String get cartCratedAt => _cartCratedAt ?? '';
  set cartCratedAt(String? val) => _cartCratedAt = val;

  bool hasCartCratedAt() => _cartCratedAt != null;

  // "cart_updated_at" field.
  String? _cartUpdatedAt;
  String get cartUpdatedAt => _cartUpdatedAt ?? '';
  set cartUpdatedAt(String? val) => _cartUpdatedAt = val;

  bool hasCartUpdatedAt() => _cartUpdatedAt != null;

  // "cart_product_uid" field.
  String? _cartProductUid;
  String get cartProductUid => _cartProductUid ?? '';
  set cartProductUid(String? val) => _cartProductUid = val;

  bool hasCartProductUid() => _cartProductUid != null;

  // "cart_total_price" field.
  int? _cartTotalPrice;
  int get cartTotalPrice => _cartTotalPrice ?? 0;
  set cartTotalPrice(int? val) => _cartTotalPrice = val;

  void incrementCartTotalPrice(int amount) =>
      cartTotalPrice = cartTotalPrice + amount;

  bool hasCartTotalPrice() => _cartTotalPrice != null;

  // "cart_status" field.
  String? _cartStatus;
  String get cartStatus => _cartStatus ?? '';
  set cartStatus(String? val) => _cartStatus = val;

  bool hasCartStatus() => _cartStatus != null;

  // "cart_quantity" field.
  int? _cartQuantity;
  int get cartQuantity => _cartQuantity ?? 0;
  set cartQuantity(int? val) => _cartQuantity = val;

  void incrementCartQuantity(int amount) =>
      cartQuantity = cartQuantity + amount;

  bool hasCartQuantity() => _cartQuantity != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "product_price" field.
  int? _productPrice;
  int get productPrice => _productPrice ?? 0;
  set productPrice(int? val) => _productPrice = val;

  void incrementProductPrice(int amount) =>
      productPrice = productPrice + amount;

  bool hasProductPrice() => _productPrice != null;

  // "product_discount" field.
  int? _productDiscount;
  int get productDiscount => _productDiscount ?? 0;
  set productDiscount(int? val) => _productDiscount = val;

  void incrementProductDiscount(int amount) =>
      productDiscount = productDiscount + amount;

  bool hasProductDiscount() => _productDiscount != null;

  static CartListStruct fromMap(Map<String, dynamic> data) => CartListStruct(
        userUidInput: data['user_uid_input'] as String?,
        userAddress: data['user_address'] as String?,
        userPhone: data['user_phone'] as String?,
        userName: data['user_name'] as String?,
        userZipcode: data['user_zipcode'] as String?,
        cartId: castToType<int>(data['cart_id']),
        cartCratedAt: data['cart_crated_at'] as String?,
        cartUpdatedAt: data['cart_updated_at'] as String?,
        cartProductUid: data['cart_product_uid'] as String?,
        cartTotalPrice: castToType<int>(data['cart_total_price']),
        cartStatus: data['cart_status'] as String?,
        cartQuantity: castToType<int>(data['cart_quantity']),
        productName: data['product_name'] as String?,
        productPrice: castToType<int>(data['product_price']),
        productDiscount: castToType<int>(data['product_discount']),
      );

  static CartListStruct? maybeFromMap(dynamic data) =>
      data is Map ? CartListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'user_uid_input': _userUidInput,
        'user_address': _userAddress,
        'user_phone': _userPhone,
        'user_name': _userName,
        'user_zipcode': _userZipcode,
        'cart_id': _cartId,
        'cart_crated_at': _cartCratedAt,
        'cart_updated_at': _cartUpdatedAt,
        'cart_product_uid': _cartProductUid,
        'cart_total_price': _cartTotalPrice,
        'cart_status': _cartStatus,
        'cart_quantity': _cartQuantity,
        'product_name': _productName,
        'product_price': _productPrice,
        'product_discount': _productDiscount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'user_uid_input': serializeParam(
          _userUidInput,
          ParamType.String,
        ),
        'user_address': serializeParam(
          _userAddress,
          ParamType.String,
        ),
        'user_phone': serializeParam(
          _userPhone,
          ParamType.String,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'user_zipcode': serializeParam(
          _userZipcode,
          ParamType.String,
        ),
        'cart_id': serializeParam(
          _cartId,
          ParamType.int,
        ),
        'cart_crated_at': serializeParam(
          _cartCratedAt,
          ParamType.String,
        ),
        'cart_updated_at': serializeParam(
          _cartUpdatedAt,
          ParamType.String,
        ),
        'cart_product_uid': serializeParam(
          _cartProductUid,
          ParamType.String,
        ),
        'cart_total_price': serializeParam(
          _cartTotalPrice,
          ParamType.int,
        ),
        'cart_status': serializeParam(
          _cartStatus,
          ParamType.String,
        ),
        'cart_quantity': serializeParam(
          _cartQuantity,
          ParamType.int,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'product_price': serializeParam(
          _productPrice,
          ParamType.int,
        ),
        'product_discount': serializeParam(
          _productDiscount,
          ParamType.int,
        ),
      }.withoutNulls;

  static CartListStruct fromSerializableMap(Map<String, dynamic> data) =>
      CartListStruct(
        userUidInput: deserializeParam(
          data['user_uid_input'],
          ParamType.String,
          false,
        ),
        userAddress: deserializeParam(
          data['user_address'],
          ParamType.String,
          false,
        ),
        userPhone: deserializeParam(
          data['user_phone'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        userZipcode: deserializeParam(
          data['user_zipcode'],
          ParamType.String,
          false,
        ),
        cartId: deserializeParam(
          data['cart_id'],
          ParamType.int,
          false,
        ),
        cartCratedAt: deserializeParam(
          data['cart_crated_at'],
          ParamType.String,
          false,
        ),
        cartUpdatedAt: deserializeParam(
          data['cart_updated_at'],
          ParamType.String,
          false,
        ),
        cartProductUid: deserializeParam(
          data['cart_product_uid'],
          ParamType.String,
          false,
        ),
        cartTotalPrice: deserializeParam(
          data['cart_total_price'],
          ParamType.int,
          false,
        ),
        cartStatus: deserializeParam(
          data['cart_status'],
          ParamType.String,
          false,
        ),
        cartQuantity: deserializeParam(
          data['cart_quantity'],
          ParamType.int,
          false,
        ),
        productName: deserializeParam(
          data['product_name'],
          ParamType.String,
          false,
        ),
        productPrice: deserializeParam(
          data['product_price'],
          ParamType.int,
          false,
        ),
        productDiscount: deserializeParam(
          data['product_discount'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CartListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartListStruct &&
        userUidInput == other.userUidInput &&
        userAddress == other.userAddress &&
        userPhone == other.userPhone &&
        userName == other.userName &&
        userZipcode == other.userZipcode &&
        cartId == other.cartId &&
        cartCratedAt == other.cartCratedAt &&
        cartUpdatedAt == other.cartUpdatedAt &&
        cartProductUid == other.cartProductUid &&
        cartTotalPrice == other.cartTotalPrice &&
        cartStatus == other.cartStatus &&
        cartQuantity == other.cartQuantity &&
        productName == other.productName &&
        productPrice == other.productPrice &&
        productDiscount == other.productDiscount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userUidInput,
        userAddress,
        userPhone,
        userName,
        userZipcode,
        cartId,
        cartCratedAt,
        cartUpdatedAt,
        cartProductUid,
        cartTotalPrice,
        cartStatus,
        cartQuantity,
        productName,
        productPrice,
        productDiscount
      ]);
}

CartListStruct createCartListStruct({
  String? userUidInput,
  String? userAddress,
  String? userPhone,
  String? userName,
  String? userZipcode,
  int? cartId,
  String? cartCratedAt,
  String? cartUpdatedAt,
  String? cartProductUid,
  int? cartTotalPrice,
  String? cartStatus,
  int? cartQuantity,
  String? productName,
  int? productPrice,
  int? productDiscount,
}) =>
    CartListStruct(
      userUidInput: userUidInput,
      userAddress: userAddress,
      userPhone: userPhone,
      userName: userName,
      userZipcode: userZipcode,
      cartId: cartId,
      cartCratedAt: cartCratedAt,
      cartUpdatedAt: cartUpdatedAt,
      cartProductUid: cartProductUid,
      cartTotalPrice: cartTotalPrice,
      cartStatus: cartStatus,
      cartQuantity: cartQuantity,
      productName: productName,
      productPrice: productPrice,
      productDiscount: productDiscount,
    );
