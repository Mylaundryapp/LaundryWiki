import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/save_address_screen/models/save_address_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SaveAddressScreen.
///
/// This class manages the state of the SaveAddressScreen, including the
/// current saveAddressModelObj
class SaveAddressController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController yourPOBoxnumberController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController addressController1 = TextEditingController();

  Rx<SaveAddressModel> saveAddressModelObj = SaveAddressModel().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    yourPOBoxnumberController.dispose();
    addressController.dispose();
    addressController1.dispose();
  }
}
