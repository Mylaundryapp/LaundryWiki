import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/account_one_screen/models/account_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AccountOneScreen.
///
/// This class manages the state of the AccountOneScreen, including the
/// current accountOneModelObj
class AccountOneController extends GetxController {
  TextEditingController manageAdressesController = TextEditingController();

  TextEditingController sixtyEightController = TextEditingController();

  TextEditingController helpSupportController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  Rx<AccountOneModel> accountOneModelObj = AccountOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    manageAdressesController.dispose();
    sixtyEightController.dispose();
    helpSupportController.dispose();
    languageController.dispose();
  }
}
