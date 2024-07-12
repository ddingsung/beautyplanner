import '../database.dart';

class OrderHistoryTable extends SupabaseTable<OrderHistoryRow> {
  @override
  String get tableName => 'order_history';

  @override
  OrderHistoryRow createRow(Map<String, dynamic> data) => OrderHistoryRow(data);
}

class OrderHistoryRow extends SupabaseDataRow {
  OrderHistoryRow(super.data);

  @override
  SupabaseTable get table => OrderHistoryTable();

  int get orderId => getField<int>('order_id')!;
  set orderId(int value) => setField<int>('order_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  List<String> get productName => getListField<String>('product_name');
  set productName(List<String> value) =>
      setListField<String>('product_name', value);

  String? get payment => getField<String>('payment');
  set payment(String? value) => setField<String>('payment', value);

  double? get totalprice => getField<double>('totalprice');
  set totalprice(double? value) => setField<double>('totalprice', value);

  String? get shippingStatus => getField<String>('shipping_status');
  set shippingStatus(String? value) =>
      setField<String>('shipping_status', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  List<int> get quantity => getListField<int>('quantity');
  set quantity(List<int> value) => setListField<int>('quantity', value);
}
