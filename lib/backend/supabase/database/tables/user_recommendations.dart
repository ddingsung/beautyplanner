import '../database.dart';

class UserRecommendationsTable extends SupabaseTable<UserRecommendationsRow> {
  @override
  String get tableName => 'user_recommendations';

  @override
  UserRecommendationsRow createRow(Map<String, dynamic> data) =>
      UserRecommendationsRow(data);
}

class UserRecommendationsRow extends SupabaseDataRow {
  UserRecommendationsRow(super.data);

  @override
  SupabaseTable get table => UserRecommendationsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  dynamic get dietPlan => getField<dynamic>('diet_plan');
  set dietPlan(dynamic value) => setField<dynamic>('diet_plan', value);

  dynamic get exercisePlan => getField<dynamic>('exercise_plan');
  set exercisePlan(dynamic value) => setField<dynamic>('exercise_plan', value);

  dynamic get skincarePlan => getField<dynamic>('skincare_plan');
  set skincarePlan(dynamic value) => setField<dynamic>('skincare_plan', value);

  dynamic get hairPlan => getField<dynamic>('hair_plan');
  set hairPlan(dynamic value) => setField<dynamic>('hair_plan', value);

  dynamic get fasionPlan => getField<dynamic>('fasion_plan');
  set fasionPlan(dynamic value) => setField<dynamic>('fasion_plan', value);

  dynamic get eatingRoutinePlan => getField<dynamic>('eating_routine_plan');
  set eatingRoutinePlan(dynamic value) =>
      setField<dynamic>('eating_routine_plan', value);

  dynamic get recommendedProducts => getField<dynamic>('recommended_products');
  set recommendedProducts(dynamic value) =>
      setField<dynamic>('recommended_products', value);

  dynamic get pastPlan => getField<dynamic>('past_plan');
  set pastPlan(dynamic value) => setField<dynamic>('past_plan', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);
}
