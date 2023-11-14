import '../controller/manage_cards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManageCardsScreen.
///
/// This class ensures that the ManageCardsController is created when the
/// ManageCardsScreen is first loaded.
class ManageCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageCardsController());
  }
}
