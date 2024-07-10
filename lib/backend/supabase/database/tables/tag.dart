import '../database.dart';

class TagTable extends SupabaseTable<TagRow> {
  @override
  String get tableName => 'tag';

  @override
  TagRow createRow(Map<String, dynamic> data) => TagRow(data);
}

class TagRow extends SupabaseDataRow {
  TagRow(super.data);

  @override
  SupabaseTable get table => TagTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
