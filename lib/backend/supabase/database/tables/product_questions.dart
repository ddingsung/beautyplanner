import '../database.dart';

class ProductQuestionsTable extends SupabaseTable<ProductQuestionsRow> {
  @override
  String get tableName => 'product_questions';

  @override
  ProductQuestionsRow createRow(Map<String, dynamic> data) =>
      ProductQuestionsRow(data);
}

class ProductQuestionsRow extends SupabaseDataRow {
  ProductQuestionsRow(super.data);

  @override
  SupabaseTable get table => ProductQuestionsTable();

  int get questionsId => getField<int>('questions_id')!;
  set questionsId(int value) => setField<int>('questions_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get userUid => getField<String>('user_uid');
  set userUid(String? value) => setField<String>('user_uid', value);

  String? get questionDetails => getField<String>('question_details');
  set questionDetails(String? value) =>
      setField<String>('question_details', value);

  String? get answerUid => getField<String>('answer_uid');
  set answerUid(String? value) => setField<String>('answer_uid', value);

  DateTime? get answerDate => getField<DateTime>('answer_date');
  set answerDate(DateTime? value) => setField<DateTime>('answer_date', value);

  String? get answerDetails => getField<String>('answer_details');
  set answerDetails(String? value) => setField<String>('answer_details', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);
}
