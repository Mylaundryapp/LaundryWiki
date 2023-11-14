import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/new_order_screen/models/new_order_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NewOrderScreen.
///
/// This class manages the state of the NewOrderScreen, including the
/// current newOrderModelObj
class NewOrderController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<NewOrderModel> newOrderModelObj = NewOrderModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in newOrderModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newOrderModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in newOrderModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newOrderModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in newOrderModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newOrderModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element in newOrderModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newOrderModelObj.value.dropdownItemList3.refresh();
  }

  onSelected4(dynamic value) {
    for (var element in newOrderModelObj.value.dropdownItemList4.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    newOrderModelObj.value.dropdownItemList4.refresh();
  }
}
