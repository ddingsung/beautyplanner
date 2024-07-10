import '../database.dart';

class RecommendedProductsTable extends SupabaseTable<RecommendedProductsRow> {
  @override
  String get tableName => 'recommended_products';

  @override
  RecommendedProductsRow createRow(Map<String, dynamic> data) =>
      RecommendedProductsRow(data);
}

class RecommendedProductsRow extends SupabaseDataRow {
  RecommendedProductsRow(super.data);

  @override
  SupabaseTable get table => RecommendedProductsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);
}
