import '../database.dart';

class ReviewsTable extends SupabaseTable<ReviewsRow> {
  @override
  String get tableName => 'reviews';

  @override
  ReviewsRow createRow(Map<String, dynamic> data) => ReviewsRow(data);
}

class ReviewsRow extends SupabaseDataRow {
  ReviewsRow(super.data);

  @override
  SupabaseTable get table => ReviewsTable();

  int get reviewId => getField<int>('review_id')!;
  set reviewId(int value) => setField<int>('review_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get productUid => getField<String>('product_uid');
  set productUid(String? value) => setField<String>('product_uid', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  List<String> get img => getListField<String>('img');
  set img(List<String>? value) => setListField<String>('img', value);

  int? get like => getField<int>('like');
  set like(int? value) => setField<int>('like', value);

  double get rating => getField<double>('rating')!;
  set rating(double value) => setField<double>('rating', value);

  bool? get isPinned => getField<bool>('is_pinned');
  set isPinned(bool? value) => setField<bool>('is_pinned', value);

  bool? get isHighlighted => getField<bool>('is_highlighted');
  set isHighlighted(bool? value) => setField<bool>('is_highlighted', value);
}
