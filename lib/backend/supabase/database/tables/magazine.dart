import '../database.dart';

class MagazineTable extends SupabaseTable<MagazineRow> {
  @override
  String get tableName => 'magazine';

  @override
  MagazineRow createRow(Map<String, dynamic> data) => MagazineRow(data);
}

class MagazineRow extends SupabaseDataRow {
  MagazineRow(super.data);

  @override
  SupabaseTable get table => MagazineTable();

  int get magazineId => getField<int>('magazine_id')!;
  set magazineId(int value) => setField<int>('magazine_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get magazineContent => getField<String>('magazine_content');
  set magazineContent(String? value) =>
      setField<String>('magazine_content', value);

  String? get magazineImg => getField<String>('magazine_img');
  set magazineImg(String? value) => setField<String>('magazine_img', value);

  String? get magazineColor => getField<String>('magazine_color');
  set magazineColor(String? value) => setField<String>('magazine_color', value);

  String? get magazineLink => getField<String>('magazine_link');
  set magazineLink(String? value) => setField<String>('magazine_link', value);
}
