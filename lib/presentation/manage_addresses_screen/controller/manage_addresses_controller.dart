import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/manage_addresses_screen/models/manage_addresses_model.dart';

/// A controller class for the ManageAddressesScreen.
///
/// This class manages the state of the ManageAddressesScreen, including the
/// current manageAddressesModelObj
class ManageAddressesController extends GetxController {
  Rx<ManageAddressesModel> manageAddressesModelObj = ManageAddressesModel().obs;
}
