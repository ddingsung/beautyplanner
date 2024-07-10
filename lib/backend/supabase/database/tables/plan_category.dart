import '../database.dart';

class PlanCategoryTable extends SupabaseTable<PlanCategoryRow> {
  @override
  String get tableName => 'plan_category';

  @override
  PlanCategoryRow createRow(Map<String, dynamic> data) => PlanCategoryRow(data);
}

class PlanCategoryRow extends SupabaseDataRow {
  PlanCategoryRow(super.data);

  @override
  SupabaseTable get table => PlanCategoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
