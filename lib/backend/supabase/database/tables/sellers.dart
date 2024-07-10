import '../database.dart';

class SellersTable extends SupabaseTable<SellersRow> {
  @override
  String get tableName => 'sellers';

  @override
  SellersRow createRow(Map<String, dynamic> data) => SellersRow(data);
}

class SellersRow extends SupabaseDataRow {
  SellersRow(super.data);

  @override
  SupabaseTable get table => SellersTable();

  int get sellerid => getField<int>('sellerid')!;
  set sellerid(int value) => setField<int>('sellerid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get sellername => getField<String>('sellername');
  set sellername(String? value) => setField<String>('sellername', value);

  String? get contactinfo => getField<String>('contactinfo');
  set contactinfo(String? value) => setField<String>('contactinfo', value);
}
