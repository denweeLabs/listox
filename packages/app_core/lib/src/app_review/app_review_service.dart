import 'package:flutter/cupertino.dart';
import 'package:in_app_review/in_app_review.dart';

class AppReviewService {
  static final _instance = InAppReview.instance;

  static Future<void> request() async {
    try {
      return _instance.requestReview();
    } catch (error) {
      debugPrint('AppReviewService requestReview error: $error');
    }
  }

  static Future<bool> openListing(String appStoreId) async {
    try {
      await _instance.openStoreListing(appStoreId: appStoreId);
      return true;
    } catch (error) {
      debugPrint('AppReviewService openListing error: $error');
      return false;
    }
  }
}
