import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/manage_cards_screen/models/manage_cards_model.dart';

/// A controller class for the ManageCardsScreen.
///
/// This class manages the state of the ManageCardsScreen, including the
/// current manageCardsModelObj
class ManageCardsController extends GetxController {
  Rx<ManageCardsModel> manageCardsModelObj = ManageCardsModel().obs;
}
