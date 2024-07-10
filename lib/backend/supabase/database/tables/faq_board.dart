import '../database.dart';

class FaqBoardTable extends SupabaseTable<FaqBoardRow> {
  @override
  String get tableName => 'faq_board';

  @override
  FaqBoardRow createRow(Map<String, dynamic> data) => FaqBoardRow(data);
}

class FaqBoardRow extends SupabaseDataRow {
  FaqBoardRow(super.data);

  @override
  SupabaseTable get table => FaqBoardTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
