import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/add_cards_screen/models/add_cards_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddCardsScreen.
///
/// This class manages the state of the AddCardsScreen, including the
/// current addCardsModelObj
class AddCardsController extends GetxController {
  TextEditingController cardNumberController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  Rx<AddCardsModel> addCardsModelObj = AddCardsModel().obs;

  @override
  void onClose() {
    super.onClose();
    cardNumberController.dispose();
    nameController.dispose();
  }
}
