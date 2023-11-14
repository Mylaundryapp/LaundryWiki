import '../controller/rating_feedback_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RatingFeedbackScreen.
///
/// This class ensures that the RatingFeedbackController is created when the
/// RatingFeedbackScreen is first loaded.
class RatingFeedbackBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RatingFeedbackController());
  }
}
