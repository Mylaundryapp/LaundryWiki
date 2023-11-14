import '../controller/add_cards_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AddCardsScreen.
///
/// This class ensures that the AddCardsController is created when the
/// AddCardsScreen is first loaded.
class AddCardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCardsController());
  }
}
