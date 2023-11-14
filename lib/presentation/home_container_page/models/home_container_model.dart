import 'deliverymanun_item_model.dart';
import '../../../core/app_export.dart';
import 'homecontainer_item_model.dart';

/// This class defines the variables used in the [home_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeContainerModel {
  Rx<List<DeliverymanunItemModel>> deliverymanunItemList =
      Rx(List.generate(1, (index) => DeliverymanunItemModel()));

  Rx<List<HomecontainerItemModel>> homecontainerItemList = Rx([
    HomecontainerItemModel(
        image: ImageConstant.imgDryClean1.obs,
        washingDryCleaning: "Washing /\nDry Cleaning".obs),
    HomecontainerItemModel(
        image: ImageConstant.imgDrying1.obs, washingDryCleaning: "Drying".obs),
    HomecontainerItemModel(
        image: ImageConstant.imgIroning1.obs,
        washingDryCleaning: "Ironing".obs),
    HomecontainerItemModel(
        image: ImageConstant.imgFoldhang1.obs,
        washingDryCleaning: "Fold /\nHang".obs)
  ]);
}
