import '../database.dart';

class UesrPreferenceTable extends SupabaseTable<UesrPreferenceRow> {
  @override
  String get tableName => 'uesr_preference';

  @override
  UesrPreferenceRow createRow(Map<String, dynamic> data) =>
      UesrPreferenceRow(data);
}

class UesrPreferenceRow extends SupabaseDataRow {
  UesrPreferenceRow(super.data);

  @override
  SupabaseTable get table => UesrPreferenceTable();

  int get userPreference => getField<int>('user_preference')!;
  set userPreference(int value) => setField<int>('user_preference', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get userId => getField<int>('user_id');
  set userId(int? value) => setField<int>('user_id', value);

  String? get preferenceName => getField<String>('preference_name');
  set preferenceName(String? value) =>
      setField<String>('preference_name', value);

  String? get preferenceValue => getField<String>('preference_value');
  set preferenceValue(String? value) =>
      setField<String>('preference_value', value);

  String? get skinConcerns => getField<String>('skin_concerns');
  set skinConcerns(String? value) => setField<String>('skin_concerns', value);

  String? get dietPreferences => getField<String>('diet_preferences');
  set dietPreferences(String? value) =>
      setField<String>('diet_preferences', value);

  String? get exercisePreferences => getField<String>('exercise_preferences');
  set exercisePreferences(String? value) =>
      setField<String>('exercise_preferences', value);

  String? get goals => getField<String>('goals');
  set goals(String? value) => setField<String>('goals', value);

  String? get allergies => getField<String>('allergies');
  set allergies(String? value) => setField<String>('allergies', value);

  String? get preferredProductCategory =>
      getField<String>('preferred_product_category');
  set preferredProductCategory(String? value) =>
      setField<String>('preferred_product_category', value);

  String? get budgetRange => getField<String>('budget_range');
  set budgetRange(String? value) => setField<String>('budget_range', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
