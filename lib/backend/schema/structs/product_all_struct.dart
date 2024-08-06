// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductAllStruct extends BaseStruct {
  ProductAllStruct({
    int? id,
    String? createdAt,
    String? productName,
    int? productPrice,
    String? productDescription,
    String? productVideo,
    int? like,
    String? updatedAt,
    bool? availabilityStatus,
    int? stockQuantity,
    String? description,
    String? subcategory,
    String? ingredients,
    String? benefits,
    String? usageInstructions,
    String? productUid,
    String? productMaker,
    String? companyId,
    List<String>? productImg,
    List<String>? tag,
    List<String>? categories,
    List<String>? option,
    List<ReviewStruct>? reviews,
    double? discount,
    int? cartCount,
  })  : _id = id,
        _createdAt = createdAt,
        _productName = productName,
        _productPrice = productPrice,
        _productDescription = productDescription,
        _productVideo = productVideo,
        _like = like,
        _updatedAt = updatedAt,
        _availabilityStatus = availabilityStatus,
        _stockQuantity = stockQuantity,
        _description = description,
        _subcategory = subcategory,
        _ingredients = ingredients,
        _benefits = benefits,
        _usageInstructions = usageInstructions,
        _productUid = productUid,
        _productMaker = productMaker,
        _companyId = companyId,
        _productImg = productImg,
        _tag = tag,
        _categories = categories,
        _option = option,
        _reviews = reviews,
        _discount = discount,
        _cartCount = cartCount;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

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

  // "product_description" field.
  String? _productDescription;
  String get productDescription => _productDescription ?? '';
  set productDescription(String? val) => _productDescription = val;

  bool hasProductDescription() => _productDescription != null;

  // "product_video" field.
  String? _productVideo;
  String get productVideo => _productVideo ?? '';
  set productVideo(String? val) => _productVideo = val;

  bool hasProductVideo() => _productVideo != null;

  // "like" field.
  int? _like;
  int get like => _like ?? 0;
  set like(int? val) => _like = val;

  void incrementLike(int amount) => like = like + amount;

  bool hasLike() => _like != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "availability_status" field.
  bool? _availabilityStatus;
  bool get availabilityStatus => _availabilityStatus ?? false;
  set availabilityStatus(bool? val) => _availabilityStatus = val;

  bool hasAvailabilityStatus() => _availabilityStatus != null;

  // "stock_quantity" field.
  int? _stockQuantity;
  int get stockQuantity => _stockQuantity ?? 0;
  set stockQuantity(int? val) => _stockQuantity = val;

  void incrementStockQuantity(int amount) =>
      stockQuantity = stockQuantity + amount;

  bool hasStockQuantity() => _stockQuantity != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "subcategory" field.
  String? _subcategory;
  String get subcategory => _subcategory ?? '';
  set subcategory(String? val) => _subcategory = val;

  bool hasSubcategory() => _subcategory != null;

  // "ingredients" field.
  String? _ingredients;
  String get ingredients => _ingredients ?? '';
  set ingredients(String? val) => _ingredients = val;

  bool hasIngredients() => _ingredients != null;

  // "benefits" field.
  String? _benefits;
  String get benefits => _benefits ?? '';
  set benefits(String? val) => _benefits = val;

  bool hasBenefits() => _benefits != null;

  // "usage_instructions" field.
  String? _usageInstructions;
  String get usageInstructions => _usageInstructions ?? '';
  set usageInstructions(String? val) => _usageInstructions = val;

  bool hasUsageInstructions() => _usageInstructions != null;

  // "product_uid" field.
  String? _productUid;
  String get productUid => _productUid ?? '';
  set productUid(String? val) => _productUid = val;

  bool hasProductUid() => _productUid != null;

  // "product_maker" field.
  String? _productMaker;
  String get productMaker => _productMaker ?? '';
  set productMaker(String? val) => _productMaker = val;

  bool hasProductMaker() => _productMaker != null;

  // "company_id" field.
  String? _companyId;
  String get companyId => _companyId ?? '';
  set companyId(String? val) => _companyId = val;

  bool hasCompanyId() => _companyId != null;

  // "product_img" field.
  List<String>? _productImg;
  List<String> get productImg => _productImg ?? const [];
  set productImg(List<String>? val) => _productImg = val;

  void updateProductImg(Function(List<String>) updateFn) {
    updateFn(_productImg ??= []);
  }

  bool hasProductImg() => _productImg != null;

  // "tag" field.
  List<String>? _tag;
  List<String> get tag => _tag ?? const [];
  set tag(List<String>? val) => _tag = val;

  void updateTag(Function(List<String>) updateFn) {
    updateFn(_tag ??= []);
  }

  bool hasTag() => _tag != null;

  // "categories" field.
  List<String>? _categories;
  List<String> get categories => _categories ?? const [];
  set categories(List<String>? val) => _categories = val;

  void updateCategories(Function(List<String>) updateFn) {
    updateFn(_categories ??= []);
  }

  bool hasCategories() => _categories != null;

  // "option" field.
  List<String>? _option;
  List<String> get option => _option ?? const [];
  set option(List<String>? val) => _option = val;

  void updateOption(Function(List<String>) updateFn) {
    updateFn(_option ??= []);
  }

  bool hasOption() => _option != null;

  // "reviews" field.
  List<ReviewStruct>? _reviews;
  List<ReviewStruct> get reviews => _reviews ?? const [];
  set reviews(List<ReviewStruct>? val) => _reviews = val;

  void updateReviews(Function(List<ReviewStruct>) updateFn) {
    updateFn(_reviews ??= []);
  }

  bool hasReviews() => _reviews != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  set discount(double? val) => _discount = val;

  void incrementDiscount(double amount) => discount = discount + amount;

  bool hasDiscount() => _discount != null;

  // "cart_count" field.
  int? _cartCount;
  int get cartCount => _cartCount ?? 0;
  set cartCount(int? val) => _cartCount = val;

  void incrementCartCount(int amount) => cartCount = cartCount + amount;

  bool hasCartCount() => _cartCount != null;

  static ProductAllStruct fromMap(Map<String, dynamic> data) =>
      ProductAllStruct(
        id: castToType<int>(data['id']),
        createdAt: data['created_at'] as String?,
        productName: data['product_name'] as String?,
        productPrice: castToType<int>(data['product_price']),
        productDescription: data['product_description'] as String?,
        productVideo: data['product_video'] as String?,
        like: castToType<int>(data['like']),
        updatedAt: data['updated_at'] as String?,
        availabilityStatus: data['availability_status'] as bool?,
        stockQuantity: castToType<int>(data['stock_quantity']),
        description: data['description'] as String?,
        subcategory: data['subcategory'] as String?,
        ingredients: data['ingredients'] as String?,
        benefits: data['benefits'] as String?,
        usageInstructions: data['usage_instructions'] as String?,
        productUid: data['product_uid'] as String?,
        productMaker: data['product_maker'] as String?,
        companyId: data['company_id'] as String?,
        productImg: getDataList(data['product_img']),
        tag: getDataList(data['tag']),
        categories: getDataList(data['categories']),
        option: getDataList(data['option']),
        reviews: getStructList(
          data['reviews'],
          ReviewStruct.fromMap,
        ),
        discount: castToType<double>(data['discount']),
        cartCount: castToType<int>(data['cart_count']),
      );

  static ProductAllStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductAllStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'created_at': _createdAt,
        'product_name': _productName,
        'product_price': _productPrice,
        'product_description': _productDescription,
        'product_video': _productVideo,
        'like': _like,
        'updated_at': _updatedAt,
        'availability_status': _availabilityStatus,
        'stock_quantity': _stockQuantity,
        'description': _description,
        'subcategory': _subcategory,
        'ingredients': _ingredients,
        'benefits': _benefits,
        'usage_instructions': _usageInstructions,
        'product_uid': _productUid,
        'product_maker': _productMaker,
        'company_id': _companyId,
        'product_img': _productImg,
        'tag': _tag,
        'categories': _categories,
        'option': _option,
        'reviews': _reviews?.map((e) => e.toMap()).toList(),
        'discount': _discount,
        'cart_count': _cartCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'product_name': serializeParam(
          _productName,
          ParamType.String,
        ),
        'product_price': serializeParam(
          _productPrice,
          ParamType.int,
        ),
        'product_description': serializeParam(
          _productDescription,
          ParamType.String,
        ),
        'product_video': serializeParam(
          _productVideo,
          ParamType.String,
        ),
        'like': serializeParam(
          _like,
          ParamType.int,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'availability_status': serializeParam(
          _availabilityStatus,
          ParamType.bool,
        ),
        'stock_quantity': serializeParam(
          _stockQuantity,
          ParamType.int,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'subcategory': serializeParam(
          _subcategory,
          ParamType.String,
        ),
        'ingredients': serializeParam(
          _ingredients,
          ParamType.String,
        ),
        'benefits': serializeParam(
          _benefits,
          ParamType.String,
        ),
        'usage_instructions': serializeParam(
          _usageInstructions,
          ParamType.String,
        ),
        'product_uid': serializeParam(
          _productUid,
          ParamType.String,
        ),
        'product_maker': serializeParam(
          _productMaker,
          ParamType.String,
        ),
        'company_id': serializeParam(
          _companyId,
          ParamType.String,
        ),
        'product_img': serializeParam(
          _productImg,
          ParamType.String,
          isList: true,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
          isList: true,
        ),
        'categories': serializeParam(
          _categories,
          ParamType.String,
          isList: true,
        ),
        'option': serializeParam(
          _option,
          ParamType.String,
          isList: true,
        ),
        'reviews': serializeParam(
          _reviews,
          ParamType.DataStruct,
          isList: true,
        ),
        'discount': serializeParam(
          _discount,
          ParamType.double,
        ),
        'cart_count': serializeParam(
          _cartCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProductAllStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductAllStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
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
        productDescription: deserializeParam(
          data['product_description'],
          ParamType.String,
          false,
        ),
        productVideo: deserializeParam(
          data['product_video'],
          ParamType.String,
          false,
        ),
        like: deserializeParam(
          data['like'],
          ParamType.int,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        availabilityStatus: deserializeParam(
          data['availability_status'],
          ParamType.bool,
          false,
        ),
        stockQuantity: deserializeParam(
          data['stock_quantity'],
          ParamType.int,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        subcategory: deserializeParam(
          data['subcategory'],
          ParamType.String,
          false,
        ),
        ingredients: deserializeParam(
          data['ingredients'],
          ParamType.String,
          false,
        ),
        benefits: deserializeParam(
          data['benefits'],
          ParamType.String,
          false,
        ),
        usageInstructions: deserializeParam(
          data['usage_instructions'],
          ParamType.String,
          false,
        ),
        productUid: deserializeParam(
          data['product_uid'],
          ParamType.String,
          false,
        ),
        productMaker: deserializeParam(
          data['product_maker'],
          ParamType.String,
          false,
        ),
        companyId: deserializeParam(
          data['company_id'],
          ParamType.String,
          false,
        ),
        productImg: deserializeParam<String>(
          data['product_img'],
          ParamType.String,
          true,
        ),
        tag: deserializeParam<String>(
          data['tag'],
          ParamType.String,
          true,
        ),
        categories: deserializeParam<String>(
          data['categories'],
          ParamType.String,
          true,
        ),
        option: deserializeParam<String>(
          data['option'],
          ParamType.String,
          true,
        ),
        reviews: deserializeStructParam<ReviewStruct>(
          data['reviews'],
          ParamType.DataStruct,
          true,
          structBuilder: ReviewStruct.fromSerializableMap,
        ),
        discount: deserializeParam(
          data['discount'],
          ParamType.double,
          false,
        ),
        cartCount: deserializeParam(
          data['cart_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProductAllStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ProductAllStruct &&
        id == other.id &&
        createdAt == other.createdAt &&
        productName == other.productName &&
        productPrice == other.productPrice &&
        productDescription == other.productDescription &&
        productVideo == other.productVideo &&
        like == other.like &&
        updatedAt == other.updatedAt &&
        availabilityStatus == other.availabilityStatus &&
        stockQuantity == other.stockQuantity &&
        description == other.description &&
        subcategory == other.subcategory &&
        ingredients == other.ingredients &&
        benefits == other.benefits &&
        usageInstructions == other.usageInstructions &&
        productUid == other.productUid &&
        productMaker == other.productMaker &&
        companyId == other.companyId &&
        listEquality.equals(productImg, other.productImg) &&
        listEquality.equals(tag, other.tag) &&
        listEquality.equals(categories, other.categories) &&
        listEquality.equals(option, other.option) &&
        listEquality.equals(reviews, other.reviews) &&
        discount == other.discount &&
        cartCount == other.cartCount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        createdAt,
        productName,
        productPrice,
        productDescription,
        productVideo,
        like,
        updatedAt,
        availabilityStatus,
        stockQuantity,
        description,
        subcategory,
        ingredients,
        benefits,
        usageInstructions,
        productUid,
        productMaker,
        companyId,
        productImg,
        tag,
        categories,
        option,
        reviews,
        discount,
        cartCount
      ]);
}

ProductAllStruct createProductAllStruct({
  int? id,
  String? createdAt,
  String? productName,
  int? productPrice,
  String? productDescription,
  String? productVideo,
  int? like,
  String? updatedAt,
  bool? availabilityStatus,
  int? stockQuantity,
  String? description,
  String? subcategory,
  String? ingredients,
  String? benefits,
  String? usageInstructions,
  String? productUid,
  String? productMaker,
  String? companyId,
  double? discount,
  int? cartCount,
}) =>
    ProductAllStruct(
      id: id,
      createdAt: createdAt,
      productName: productName,
      productPrice: productPrice,
      productDescription: productDescription,
      productVideo: productVideo,
      like: like,
      updatedAt: updatedAt,
      availabilityStatus: availabilityStatus,
      stockQuantity: stockQuantity,
      description: description,
      subcategory: subcategory,
      ingredients: ingredients,
      benefits: benefits,
      usageInstructions: usageInstructions,
      productUid: productUid,
      productMaker: productMaker,
      companyId: companyId,
      discount: discount,
      cartCount: cartCount,
    );
