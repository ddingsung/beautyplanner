import '../database.dart';

class CategoriesTable extends SupabaseTable<CategoriesRow> {
  @override
  String get tableName => 'categories';

  @override
  CategoriesRow createRow(Map<String, dynamic> data) => CategoriesRow(data);
}

class CategoriesRow extends SupabaseDataRow {
  CategoriesRow(super.data);

  @override
  SupabaseTable get table => CategoriesTable();

  int get categoryId => getField<int>('category_id')!;
  set categoryId(int value) => setField<int>('category_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get categoryName => getField<String>('category_name');
  set categoryName(String? value) => setField<String>('category_name', value);

  int? get parentCategoryId => getField<int>('parent_category_id');
  set parentCategoryId(int? value) =>
      setField<int>('parent_category_id', value);
}
