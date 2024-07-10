import '../database.dart';

class UserInteractionsTable extends SupabaseTable<UserInteractionsRow> {
  @override
  String get tableName => 'user_interactions';

  @override
  UserInteractionsRow createRow(Map<String, dynamic> data) =>
      UserInteractionsRow(data);
}

class UserInteractionsRow extends SupabaseDataRow {
  UserInteractionsRow(super.data);

  @override
  SupabaseTable get table => UserInteractionsTable();

  int get interactionId => getField<int>('interaction_id')!;
  set interactionId(int value) => setField<int>('interaction_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);

  String? get interactionType => getField<String>('interaction_type');
  set interactionType(String? value) =>
      setField<String>('interaction_type', value);

  DateTime? get interactionDate => getField<DateTime>('interaction_date');
  set interactionDate(DateTime? value) =>
      setField<DateTime>('interaction_date', value);

  dynamic get ongoingSurvey => getField<dynamic>('ongoing_survey');
  set ongoingSurvey(dynamic value) =>
      setField<dynamic>('ongoing_survey', value);
}
