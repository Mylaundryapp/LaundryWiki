import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/select_services_bottomsheet/models/select_services_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectServicesBottomsheet.
///
/// This class manages the state of the SelectServicesBottomsheet, including the
/// current selectServicesModelObj
class SelectServicesController extends GetxController {
  TextEditingController placeholderController = TextEditingController();

  Rx<SelectServicesModel> selectServicesModelObj = SelectServicesModel().obs;

  Rx<String> quantity = "".obs;

  Rx<bool> needSpecialCare = false.obs;

  @override
  void onClose() {
    super.onClose();
    placeholderController.dispose();
  }
}
