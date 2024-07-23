import '../database.dart';

class ProductCompaniesTable extends SupabaseTable<ProductCompaniesRow> {
  @override
  String get tableName => 'product_companies';

  @override
  ProductCompaniesRow createRow(Map<String, dynamic> data) =>
      ProductCompaniesRow(data);
}

class ProductCompaniesRow extends SupabaseDataRow {
  ProductCompaniesRow(super.data);

  @override
  SupabaseTable get table => ProductCompaniesTable();

  int get companyId => getField<int>('company_id')!;
  set companyId(int value) => setField<int>('company_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get companyName => getField<String>('company_name');
  set companyName(String? value) => setField<String>('company_name', value);

  String? get contactEmail => getField<String>('contact_email');
  set contactEmail(String? value) => setField<String>('contact_email', value);

  String? get contactPhone => getField<String>('contact_phone');
  set contactPhone(String? value) => setField<String>('contact_phone', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get website => getField<String>('website');
  set website(String? value) => setField<String>('website', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  PostgresTime? get inquiryTimeOpen =>
      getField<PostgresTime>('inquiry_time_open');
  set inquiryTimeOpen(PostgresTime? value) =>
      setField<PostgresTime>('inquiry_time_open', value);

  PostgresTime? get inquiryTimeClose =>
      getField<PostgresTime>('inquiry_time_close');
  set inquiryTimeClose(PostgresTime? value) =>
      setField<PostgresTime>('inquiry_time_close', value);
}
