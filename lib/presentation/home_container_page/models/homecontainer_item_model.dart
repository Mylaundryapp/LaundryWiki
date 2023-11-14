import '../../../core/app_export.dart';

/// This class is used in the [homecontainer_item_widget] screen.
class HomecontainerItemModel {
  HomecontainerItemModel({
    this.image,
    this.washingDryCleaning,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgDryClean1);
    washingDryCleaning = washingDryCleaning ?? Rx("Washing /\nDry Cleaning");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? washingDryCleaning;

  Rx<String>? id;
}
