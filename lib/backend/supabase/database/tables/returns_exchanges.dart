import '../database.dart';

class ReturnsExchangesTable extends SupabaseTable<ReturnsExchangesRow> {
  @override
  String get tableName => 'returns_exchanges';

  @override
  ReturnsExchangesRow createRow(Map<String, dynamic> data) =>
      ReturnsExchangesRow(data);
}

class ReturnsExchangesRow extends SupabaseDataRow {
  ReturnsExchangesRow(super.data);

  @override
  SupabaseTable get table => ReturnsExchangesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  int? get purchaseId => getField<int>('purchase_id');
  set purchaseId(int? value) => setField<int>('purchase_id', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get reason => getField<String>('reason');
  set reason(String? value) => setField<String>('reason', value);
}
