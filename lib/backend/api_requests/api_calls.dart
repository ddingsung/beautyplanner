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

  static String? userUid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_uid_input''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_name''',
      ));
  static int? cartId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cart_id''',
      ));
  static String? cartCreatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].cart_crated_at''',
      ));
  static String? cartUpdatedAt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].cart_updated_at''',
      ));
  static String? cartProductUid(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].cart_product_uid''',
      ));
  static int? cartTotalPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cart_total_price''',
      ));
  static int? cartQuantity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].cart_quantity''',
      ));
  static String? productName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].product_name''',
      ));
  static int? productPrice(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].product_price''',
      ));
  static int? productDiscount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].product_discount''',
      ));
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
