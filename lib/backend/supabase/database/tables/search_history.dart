import '../database.dart';

class SearchHistoryTable extends SupabaseTable<SearchHistoryRow> {
  @override
  String get tableName => 'search_history';

  @override
  SearchHistoryRow createRow(Map<String, dynamic> data) =>
      SearchHistoryRow(data);
}

class SearchHistoryRow extends SupabaseDataRow {
  SearchHistoryRow(super.data);

  @override
  SupabaseTable get table => SearchHistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
