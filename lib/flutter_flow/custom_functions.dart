import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double? setFontSize(double fontSize) {
  try {
    double textScale =
        WidgetsBinding.instance.platformDispatcher.textScaleFactor;
    return fontSize / textScale;
  } catch (e) {
    return fontSize;
  }
}

double? reviewRatingAverage(List<ReviewsRow>? products) {
  double totalReviewRating = 0.0;

  for (var product in products ?? []) {
    if (product.rating != null) {
      double pRating = product.rating;
      totalReviewRating += pRating;
    } else {
      return totalReviewRating = 0.0;
    }
  }

  return totalReviewRating;
}

double calculateTotalPrice(List<dynamic>? products) {
  double totalDiscountedPrice = 0.0;

  for (var product in products ?? []) {
    if (product['product_price'] != null &&
        product['product_discount'] != null) {
      double price = product['product_price'];
      double discount = product['product_discount'];
      double discountedPrice = price * (1 - (discount / 100));
      totalDiscountedPrice += discountedPrice;
    }
  }
  return totalDiscountedPrice;
}
