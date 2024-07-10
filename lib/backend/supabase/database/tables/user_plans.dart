import '../database.dart';

class UserPlansTable extends SupabaseTable<UserPlansRow> {
  @override
  String get tableName => 'user_plans';

  @override
  UserPlansRow createRow(Map<String, dynamic> data) => UserPlansRow(data);
}

class UserPlansRow extends SupabaseDataRow {
  UserPlansRow(super.data);

  @override
  SupabaseTable get table => UserPlansTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
