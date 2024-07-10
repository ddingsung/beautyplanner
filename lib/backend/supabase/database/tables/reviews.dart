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

  int? get productUid => getField<int>('product_uid');
  set productUid(int? value) => setField<int>('product_uid', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get comment => getField<String>('comment');
  set comment(String? value) => setField<String>('comment', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  int? get like => getField<int>('like');
  set like(int? value) => setField<int>('like', value);

  double get rating => getField<double>('rating')!;
  set rating(double value) => setField<double>('rating', value);

  bool? get isPinned => getField<bool>('is_pinned');
  set isPinned(bool? value) => setField<bool>('is_pinned', value);

  bool? get isHighlighted => getField<bool>('is_highlighted');
  set isHighlighted(bool? value) => setField<bool>('is_highlighted', value);
}
