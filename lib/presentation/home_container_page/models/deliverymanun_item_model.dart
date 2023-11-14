import '../../../core/app_export.dart';

/// This class is used in the [deliverymanun_item_widget] screen.
class DeliverymanunItemModel {
  DeliverymanunItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
