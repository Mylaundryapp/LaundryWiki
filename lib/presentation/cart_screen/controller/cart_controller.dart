import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/cart_screen/models/cart_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the CartScreen.
///
/// This class manages the state of the CartScreen, including the
/// current cartModelObj
class CartController extends GetxController {
  TextEditingController placeholderController = TextEditingController();

  Rx<CartModel> cartModelObj = CartModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;

  Rx<bool> needSpecialCare = false.obs;

  Rx<bool> addHangingDeliveryAEDextra = false.obs;

  @override
  void onClose() {
    super.onClose();
    placeholderController.dispose();
  }
}
