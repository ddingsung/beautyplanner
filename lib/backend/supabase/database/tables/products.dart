import '../database.dart';

class ProductsTable extends SupabaseTable<ProductsRow> {
  @override
  String get tableName => 'products';

  @override
  ProductsRow createRow(Map<String, dynamic> data) => ProductsRow(data);
}

class ProductsRow extends SupabaseDataRow {
  ProductsRow(super.data);

  @override
  SupabaseTable get table => ProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productName => getField<String>('product_name');
  set productName(String? value) => setField<String>('product_name', value);

  int? get productPrice => getField<int>('product_price');
  set productPrice(int? value) => setField<int>('product_price', value);

  String? get productDescription => getField<String>('product_description');
  set productDescription(String? value) =>
      setField<String>('product_description', value);

  List<String> get productImg => getListField<String>('product_img');
  set productImg(List<String>? value) =>
      setListField<String>('product_img', value);

  String? get productVideo => getField<String>('product_video');
  set productVideo(String? value) => setField<String>('product_video', value);

  List<String> get tag => getListField<String>('tag');
  set tag(List<String>? value) => setListField<String>('tag', value);

  int? get like => getField<int>('like');
  set like(int? value) => setField<int>('like', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  bool get availabilityStatus => getField<bool>('availability_status')!;
  set availabilityStatus(bool value) =>
      setField<bool>('availability_status', value);

  int? get stockQuantity => getField<int>('stock_quantity');
  set stockQuantity(int? value) => setField<int>('stock_quantity', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  List<String> get subcategories => getListField<String>('subcategories');
  set subcategories(List<String>? value) =>
      setListField<String>('subcategories', value);

  List<String> get ingredients => getListField<String>('ingredients');
  set ingredients(List<String>? value) =>
      setListField<String>('ingredients', value);

  List<String> get benefits => getListField<String>('benefits');
  set benefits(List<String>? value) => setListField<String>('benefits', value);

  String? get usageInstructions => getField<String>('usage_instructions');
  set usageInstructions(String? value) =>
      setField<String>('usage_instructions', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);

  double? get discount => getField<double>('discount');
  set discount(double? value) => setField<double>('discount', value);

  String? get productMaker => getField<String>('product_maker');
  set productMaker(String? value) => setField<String>('product_maker', value);

  List<String> get option => getListField<String>('option');
  set option(List<String>? value) => setListField<String>('option', value);

  int? get companyId => getField<int>('company_id');
  set companyId(int? value) => setField<int>('company_id', value);

  List<String> get nameWords => getListField<String>('name_words');
  set nameWords(List<String>? value) =>
      setListField<String>('name_words', value);

  String? get productDetailImg => getField<String>('product_detail_img');
  set productDetailImg(String? value) =>
      setField<String>('product_detail_img', value);
}
