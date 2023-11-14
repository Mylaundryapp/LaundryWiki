import 'package:mylaundryapp/data/models/selectionPopupModel/selection_popup_model.dart';
import '../../../core/app_export.dart';
import 'neworder_item_model.dart';

/// This class defines the variables used in the [new_order_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NewOrderModel {
  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList4 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<NeworderItemModel>> neworderItemList = Rx([
    NeworderItemModel(
        listTitle: "  InnerWears".obs, innerWears: ImageConstant.imgTops14.obs),
    NeworderItemModel(
        listTitle: "  Uniforms".obs, innerWears: ImageConstant.imgTops15.obs),
    NeworderItemModel(
        listTitle: "  Bedding & Covers".obs,
        innerWears: ImageConstant.imgTops16.obs),
    NeworderItemModel(
        listTitle: "  Bags & Shoes".obs,
        innerWears: ImageConstant.imgTops17.obs),
    NeworderItemModel(
        listTitle: "  Others".obs, innerWears: ImageConstant.imgTops18.obs)
  ]);
}
