import '../database.dart';

class CartTable extends SupabaseTable<CartRow> {
  @override
  String get tableName => 'cart';

  @override
  CartRow createRow(Map<String, dynamic> data) => CartRow(data);
}

class CartRow extends SupabaseDataRow {
  CartRow(super.data);

  @override
  SupabaseTable get table => CartTable();

  int get cartId => getField<int>('cart_id')!;
  set cartId(int value) => setField<int>('cart_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);

  String? get userUid => getField<String>('user_uid');
  set userUid(String? value) => setField<String>('user_uid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get cartCategory => getField<String>('cart_category');
  set cartCategory(String? value) => setField<String>('cart_category', value);
}
