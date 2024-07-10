import '../database.dart';

class PurchaseHistoryTable extends SupabaseTable<PurchaseHistoryRow> {
  @override
  String get tableName => 'purchase_history';

  @override
  PurchaseHistoryRow createRow(Map<String, dynamic> data) =>
      PurchaseHistoryRow(data);
}

class PurchaseHistoryRow extends SupabaseDataRow {
  PurchaseHistoryRow(super.data);

  @override
  SupabaseTable get table => PurchaseHistoryTable();

  int get purchaseId => getField<int>('purchase_id')!;
  set purchaseId(int value) => setField<int>('purchase_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);

  DateTime? get purchaseDate => getField<DateTime>('purchase_date');
  set purchaseDate(DateTime? value) =>
      setField<DateTime>('purchase_date', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  double? get totalPrice => getField<double>('total_price');
  set totalPrice(double? value) => setField<double>('total_price', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
