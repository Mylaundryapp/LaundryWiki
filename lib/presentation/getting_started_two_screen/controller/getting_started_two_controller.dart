import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/getting_started_two_screen/models/getting_started_two_model.dart';

/// A controller class for the GettingStartedTwoScreen.
///
/// This class manages the state of the GettingStartedTwoScreen, including the
/// current gettingStartedTwoModelObj
class GettingStartedTwoController extends GetxController {
  Rx<GettingStartedTwoModel> gettingStartedTwoModelObj =
      GettingStartedTwoModel().obs;
}
