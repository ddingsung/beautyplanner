import '../database.dart';

class UsersTable extends SupabaseTable<UsersRow> {
  @override
  String get tableName => 'users';

  @override
  UsersRow createRow(Map<String, dynamic> data) => UsersRow(data);
}

class UsersRow extends SupabaseDataRow {
  UsersRow(super.data);

  @override
  SupabaseTable get table => UsersTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get dateOfBirth => getField<DateTime>('date_of_birth');
  set dateOfBirth(DateTime? value) =>
      setField<DateTime>('date_of_birth', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String? get gender => getField<String>('gender');
  set gender(String? value) => setField<String>('gender', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  String get password => getField<String>('password')!;
  set password(String value) => setField<String>('password', value);

  List<String> get tags => getListField<String>('tags');
  set tags(List<String>? value) => setListField<String>('tags', value);

  double? get height => getField<double>('height');
  set height(double? value) => setField<double>('height', value);

  double? get weight => getField<double>('weight');
  set weight(double? value) => setField<double>('weight', value);

  String? get activityLevel => getField<String>('activity_level');
  set activityLevel(String? value) => setField<String>('activity_level', value);

  String? get skinType => getField<String>('skin_type');
  set skinType(String? value) => setField<String>('skin_type', value);

  String? get phone => getField<String>('phone');
  set phone(String? value) => setField<String>('phone', value);

  String? get address => getField<String>('address');
  set address(String? value) => setField<String>('address', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  String? get plan => getField<String>('plan');
  set plan(String? value) => setField<String>('plan', value);

  String? get userSurvey => getField<String>('user_survey');
  set userSurvey(String? value) => setField<String>('user_survey', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  int? get zipcode => getField<int>('zipcode');
  set zipcode(int? value) => setField<int>('zipcode', value);

  String? get nickname => getField<String>('nickname');
  set nickname(String? value) => setField<String>('nickname', value);
}
