import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/select_cloth_type_screen/models/select_cloth_type_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SelectClothTypeScreen.
///
/// This class manages the state of the SelectClothTypeScreen, including the
/// current selectClothTypeModelObj
class SelectClothTypeController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectClothTypeModel> selectClothTypeModelObj = SelectClothTypeModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in selectClothTypeModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    selectClothTypeModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in selectClothTypeModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    selectClothTypeModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in selectClothTypeModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    selectClothTypeModelObj.value.dropdownItemList2.refresh();
  }
}
