import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/getting_started_four_screen/models/getting_started_four_model.dart';

/// A controller class for the GettingStartedFourScreen.
///
/// This class manages the state of the GettingStartedFourScreen, including the
/// current gettingStartedFourModelObj
class GettingStartedFourController extends GetxController {
  Rx<GettingStartedFourModel> gettingStartedFourModelObj =
      GettingStartedFourModel().obs;
}
