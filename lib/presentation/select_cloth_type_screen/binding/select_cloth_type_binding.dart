import '../controller/select_cloth_type_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SelectClothTypeScreen.
///
/// This class ensures that the SelectClothTypeController is created when the
/// SelectClothTypeScreen is first loaded.
class SelectClothTypeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectClothTypeController());
  }
}
