import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/rating_feedback_screen/models/rating_feedback_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RatingFeedbackScreen.
///
/// This class manages the state of the RatingFeedbackScreen, including the
/// current ratingFeedbackModelObj
class RatingFeedbackController extends GetxController {
  TextEditingController group147Controller = TextEditingController();

  Rx<RatingFeedbackModel> ratingFeedbackModelObj = RatingFeedbackModel().obs;

  @override
  void onClose() {
    super.onClose();
    group147Controller.dispose();
  }
}
