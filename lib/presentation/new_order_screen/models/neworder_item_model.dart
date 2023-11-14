import '../../../core/app_export.dart';

/// This class is used in the [neworder_item_widget] screen.
class NeworderItemModel {
  NeworderItemModel({
    this.listTitle,
    this.innerWears,
    this.id,
  }) {
    listTitle = listTitle ?? Rx("  InnerWears");
    innerWears = innerWears ?? Rx(ImageConstant.imgTops14);
    id = id ?? Rx("");
  }

  Rx<String>? listTitle;

  Rx<String>? innerWears;

  Rx<String>? id;
}
