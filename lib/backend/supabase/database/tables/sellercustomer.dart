import '../database.dart';

class SellercustomerTable extends SupabaseTable<SellercustomerRow> {
  @override
  String get tableName => 'sellercustomer';

  @override
  SellercustomerRow createRow(Map<String, dynamic> data) =>
      SellercustomerRow(data);
}

class SellercustomerRow extends SupabaseDataRow {
  SellercustomerRow(super.data);

  @override
  SupabaseTable get table => SellercustomerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get sellerid => getField<int>('sellerid');
  set sellerid(int? value) => setField<int>('sellerid', value);

  String? get customerid => getField<String>('customerid');
  set customerid(String? value) => setField<String>('customerid', value);
}
