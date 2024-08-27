import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetProductInfoCall {
  static Future<ApiCallResponse> call({
    String? productUid = '0',
  }) async {
    final ffApiRequestBody = '''
{
  "product_uid_input": "$productUid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetProductInfo',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/rpc/get_product_detail',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? reviewId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productUid(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? productDiscount(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? productImg(dynamic response) => getJsonField(
        response,
        r'''$[:].product_img''',
        true,
      ) as List?;
  static List<int>? productLike(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productMaker(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_maker''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewUserId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_user_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewComment(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? reviewImg(dynamic response) => getJsonField(
        response,
        r'''$[:].review_img''',
        true,
      ) as List?;
  static List<int>? reviewRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? questionId(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_id''',
        true,
      ) as List?;
  static List? questionsCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_created_at''',
        true,
      ) as List?;
  static List? questionUserUid(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_user_uid''',
        true,
      ) as List?;
  static List? questionDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_detail''',
        true,
      ) as List?;
  static List? answerUid(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_uid''',
        true,
      ) as List?;
  static List? answerDate(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_date''',
        true,
      ) as List?;
  static List? answerDetails(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_details''',
        true,
      ) as List?;
  static List? answerStatus(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_status''',
        true,
      ) as List?;
}

class GetProductToUidCall {
  static Future<ApiCallResponse> call({
    String? uid = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProductToUid',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/products?product_uid=eq.$uid',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? reviewId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productUid(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? productDiscount(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productImg(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productLike(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productMaker(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_maker''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewUserId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_user_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewComment(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? reviewImg(dynamic response) => getJsonField(
        response,
        r'''$[:].review_img''',
        true,
      ) as List?;
  static List<int>? reviewRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? questionId(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_id''',
        true,
      ) as List?;
  static List? questionsCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_created_at''',
        true,
      ) as List?;
  static List? questionUserUid(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_user_uid''',
        true,
      ) as List?;
  static List? questionDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_detail''',
        true,
      ) as List?;
  static List? answerUid(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_uid''',
        true,
      ) as List?;
  static List? answerDate(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_date''',
        true,
      ) as List?;
  static List? answerDetails(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_details''',
        true,
      ) as List?;
  static List? answerStatus(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_status''',
        true,
      ) as List?;
}

class GetProductReviewsCall {
  static Future<ApiCallResponse> call({
    String? uid = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProductReviews',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/reviews?product_uid=eq.$uid',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? reviewId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productUid(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? productDiscount(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productImg(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productLike(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productMaker(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_maker''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewUserId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_user_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewComment(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? reviewImg(dynamic response) => getJsonField(
        response,
        r'''$[:].review_img''',
        true,
      ) as List?;
  static List<int>? reviewRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? questionId(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_id''',
        true,
      ) as List?;
  static List? questionsCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_created_at''',
        true,
      ) as List?;
  static List? questionUserUid(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_user_uid''',
        true,
      ) as List?;
  static List? questionDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_detail''',
        true,
      ) as List?;
  static List? answerUid(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_uid''',
        true,
      ) as List?;
  static List? answerDate(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_date''',
        true,
      ) as List?;
  static List? answerDetails(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_details''',
        true,
      ) as List?;
  static List? answerStatus(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_status''',
        true,
      ) as List?;
}

class GetProductAllCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetProductAll',
      apiUrl: 'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/products',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<int>? reviewId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productUid(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? productDiscount(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productImg(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_img''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productLike(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_like''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productMaker(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_maker''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewUserId(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_user_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewComment(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? reviewImg(dynamic response) => getJsonField(
        response,
        r'''$[:].review_img''',
        true,
      ) as List?;
  static List<int>? reviewRating(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].review_created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? questionId(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_id''',
        true,
      ) as List?;
  static List? questionsCreatedAt(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_created_at''',
        true,
      ) as List?;
  static List? questionUserUid(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_user_uid''',
        true,
      ) as List?;
  static List? questionDetail(dynamic response) => getJsonField(
        response,
        r'''$[:].questions_detail''',
        true,
      ) as List?;
  static List? answerUid(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_uid''',
        true,
      ) as List?;
  static List? answerDate(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_date''',
        true,
      ) as List?;
  static List? answerDetails(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_details''',
        true,
      ) as List?;
  static List? answerStatus(dynamic response) => getJsonField(
        response,
        r'''$[:].answer_status''',
        true,
      ) as List?;
}

class GetUserCartCall {
  static Future<ApiCallResponse> call({
    String? userUidInputParam = '0',
  }) async {
    final ffApiRequestBody = '''
{
  "user_uid_input_param": "$userUidInputParam"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserCart',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/rpc/get_user_cart',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? uesrAddress(dynamic response) => getJsonField(
        response,
        r'''$[:].user_address''',
        true,
      ) as List?;
  static List? userPhone(dynamic response) => getJsonField(
        response,
        r'''$[:].user_phone''',
        true,
      ) as List?;
  static List<String>? cartStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? userZipcode(dynamic response) => getJsonField(
        response,
        r'''$[:].user_zipcode''',
        true,
      ) as List?;
  static List<String>? userUidInput(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_uid_input''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? cartId(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? cartCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_crated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cartUpdatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cartProductUid(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_product_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? cartTotalPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_total_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? cartQuantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? productDiscount(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class GetUserCartCopyCall {
  static Future<ApiCallResponse> call({
    String? userUidInputParam = '0',
  }) async {
    final ffApiRequestBody = '''
{
  "user_uid_input_param": "$userUidInputParam"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetUserCart Copy',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/rpc/get_user_cart_object',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? uesrAddress(dynamic response) => getJsonField(
        response,
        r'''$[:].user_address''',
        true,
      ) as List?;
  static List? userPhone(dynamic response) => getJsonField(
        response,
        r'''$[:].user_phone''',
        true,
      ) as List?;
  static List<String>? cartStatus(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? userZipcode(dynamic response) => getJsonField(
        response,
        r'''$[:].user_zipcode''',
        true,
      ) as List?;
  static List<String>? userUidInput(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_uid_input''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? userName(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? cartId(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? cartCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_crated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cartUpdatedAt(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_updated_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cartProductUid(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_product_uid''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? cartTotalPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_total_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? cartQuantity(dynamic response) => (getJsonField(
        response,
        r'''$[:].cart_quantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productName(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? productPrice(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<double>? productDiscount(dynamic response) => (getJsonField(
        response,
        r'''$[:].product_discount''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class GetItemCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetItem',
      apiUrl:
          'https://ffugorsdjjxnnlbwptfh.supabase.co/rest/v1/product?id=eq.$id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4',
        'Authorization':
            'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZmdWdvcnNkamp4bm5sYndwdGZoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTgyNjI5MTIsImV4cCI6MjAzMzgzODkxMn0.X44TcAHE9u2Rx0ViGUY47M2lbJqbTB5yemWUU2utuB4',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? img(dynamic response) => (getJsonField(
        response,
        r'''$[:].img_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? created(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].created_at''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static int? price(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].price''',
      ));
}

class GetOrderIdToProductListCallCall {
  static Future<ApiCallResponse> call({
    int? id,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetOrderIdToProductListCall',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/order_histor?order_id=eq.$id',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchProductsCall {
  static Future<ApiCallResponse> call({
    String? searchWord = '',
  }) async {
    final ffApiRequestBody = '''
{
  "search_term": "$searchWord"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchProducts',
      apiUrl:
          'https://mfrdiyqsjilugquaxyed.supabase.co/rest/v1/rpc/search_products',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1mcmRpeXFzamlsdWdxdWF4eWVkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTk0NTAyNjAsImV4cCI6MjAzNTAyNjI2MH0.GHgXSTy8pu_aOu4B89pR6E_aeR5qeKa3UNs3UC9lMYc',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
