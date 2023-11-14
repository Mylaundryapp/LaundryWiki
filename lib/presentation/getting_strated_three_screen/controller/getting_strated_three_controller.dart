import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/getting_strated_three_screen/models/getting_strated_three_model.dart';

/// A controller class for the GettingStratedThreeScreen.
///
/// This class manages the state of the GettingStratedThreeScreen, including the
/// current gettingStratedThreeModelObj
class GettingStratedThreeController extends GetxController {
  Rx<GettingStratedThreeModel> gettingStratedThreeModelObj =
      GettingStratedThreeModel().obs;
}
