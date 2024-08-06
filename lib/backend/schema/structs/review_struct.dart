// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewStruct extends BaseStruct {
  ReviewStruct({
    int? reviewId,
    String? productUid,
    String? userId,
    String? userName,
    String? comment,
    String? like,
    int? rating,
    bool? isPinned,
    bool? isHighlighted,
    List<String>? img,
    String? createdAt,
  })  : _reviewId = reviewId,
        _productUid = productUid,
        _userId = userId,
        _userName = userName,
        _comment = comment,
        _like = like,
        _rating = rating,
        _isPinned = isPinned,
        _isHighlighted = isHighlighted,
        _img = img,
        _createdAt = createdAt;

  // "review_id" field.
  int? _reviewId;
  int get reviewId => _reviewId ?? 0;
  set reviewId(int? val) => _reviewId = val;

  void incrementReviewId(int amount) => reviewId = reviewId + amount;

  bool hasReviewId() => _reviewId != null;

  // "product_uid" field.
  String? _productUid;
  String get productUid => _productUid ?? '';
  set productUid(String? val) => _productUid = val;

  bool hasProductUid() => _productUid != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  set comment(String? val) => _comment = val;

  bool hasComment() => _comment != null;

  // "like" field.
  String? _like;
  String get like => _like ?? '';
  set like(String? val) => _like = val;

  bool hasLike() => _like != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  set rating(int? val) => _rating = val;

  void incrementRating(int amount) => rating = rating + amount;

  bool hasRating() => _rating != null;

  // "is_pinned" field.
  bool? _isPinned;
  bool get isPinned => _isPinned ?? false;
  set isPinned(bool? val) => _isPinned = val;

  bool hasIsPinned() => _isPinned != null;

  // "is_highlighted" field.
  bool? _isHighlighted;
  bool get isHighlighted => _isHighlighted ?? false;
  set isHighlighted(bool? val) => _isHighlighted = val;

  bool hasIsHighlighted() => _isHighlighted != null;

  // "img" field.
  List<String>? _img;
  List<String> get img => _img ?? const [];
  set img(List<String>? val) => _img = val;

  void updateImg(Function(List<String>) updateFn) {
    updateFn(_img ??= []);
  }

  bool hasImg() => _img != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static ReviewStruct fromMap(Map<String, dynamic> data) => ReviewStruct(
        reviewId: castToType<int>(data['review_id']),
        productUid: data['product_uid'] as String?,
        userId: data['user_id'] as String?,
        userName: data['user_name'] as String?,
        comment: data['comment'] as String?,
        like: data['like'] as String?,
        rating: castToType<int>(data['rating']),
        isPinned: data['is_pinned'] as bool?,
        isHighlighted: data['is_highlighted'] as bool?,
        img: getDataList(data['img']),
        createdAt: data['created_at'] as String?,
      );

  static ReviewStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReviewStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'review_id': _reviewId,
        'product_uid': _productUid,
        'user_id': _userId,
        'user_name': _userName,
        'comment': _comment,
        'like': _like,
        'rating': _rating,
        'is_pinned': _isPinned,
        'is_highlighted': _isHighlighted,
        'img': _img,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'review_id': serializeParam(
          _reviewId,
          ParamType.int,
        ),
        'product_uid': serializeParam(
          _productUid,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'comment': serializeParam(
          _comment,
          ParamType.String,
        ),
        'like': serializeParam(
          _like,
          ParamType.String,
        ),
        'rating': serializeParam(
          _rating,
          ParamType.int,
        ),
        'is_pinned': serializeParam(
          _isPinned,
          ParamType.bool,
        ),
        'is_highlighted': serializeParam(
          _isHighlighted,
          ParamType.bool,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
          isList: true,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReviewStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReviewStruct(
        reviewId: deserializeParam(
          data['review_id'],
          ParamType.int,
          false,
        ),
        productUid: deserializeParam(
          data['product_uid'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        comment: deserializeParam(
          data['comment'],
          ParamType.String,
          false,
        ),
        like: deserializeParam(
          data['like'],
          ParamType.String,
          false,
        ),
        rating: deserializeParam(
          data['rating'],
          ParamType.int,
          false,
        ),
        isPinned: deserializeParam(
          data['is_pinned'],
          ParamType.bool,
          false,
        ),
        isHighlighted: deserializeParam(
          data['is_highlighted'],
          ParamType.bool,
          false,
        ),
        img: deserializeParam<String>(
          data['img'],
          ParamType.String,
          true,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReviewStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReviewStruct &&
        reviewId == other.reviewId &&
        productUid == other.productUid &&
        userId == other.userId &&
        userName == other.userName &&
        comment == other.comment &&
        like == other.like &&
        rating == other.rating &&
        isPinned == other.isPinned &&
        isHighlighted == other.isHighlighted &&
        listEquality.equals(img, other.img) &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        reviewId,
        productUid,
        userId,
        userName,
        comment,
        like,
        rating,
        isPinned,
        isHighlighted,
        img,
        createdAt
      ]);
}

ReviewStruct createReviewStruct({
  int? reviewId,
  String? productUid,
  String? userId,
  String? userName,
  String? comment,
  String? like,
  int? rating,
  bool? isPinned,
  bool? isHighlighted,
  String? createdAt,
}) =>
    ReviewStruct(
      reviewId: reviewId,
      productUid: productUid,
      userId: userId,
      userName: userName,
      comment: comment,
      like: like,
      rating: rating,
      isPinned: isPinned,
      isHighlighted: isHighlighted,
      createdAt: createdAt,
    );
