import '../../../core/app_export.dart';

/// This class is used in the [orderdetails_item_widget] screen.
class OrderdetailsItemModel {
  OrderdetailsItemModel({
    this.nikeAirMaxReact,
    this.price,
    this.quantity,
    this.two,
    this.washIron,
    this.specialCare,
    this.photosOfStrains,
    this.image,
    this.thisItemIsEligible,
    this.price1,
    this.id,
  }) {
    nikeAirMaxReact = nikeAirMaxReact ?? Rx("Ladies Top");
    price = price ?? Rx("AED 1.00");
    quantity = quantity ?? Rx("Quantity");
    two = two ?? Rx("2");
    washIron = washIron ?? Rx("Wash & Iron");
    specialCare = specialCare ?? Rx("Special Care");
    photosOfStrains = photosOfStrains ?? Rx("Photos of strains & Damages");
    image = image ?? Rx(ImageConstant.imgGroup35);
    thisItemIsEligible =
        thisItemIsEligible ?? Rx("This Item is eligible for Hanging delivery");
    price1 = price1 ?? Rx("AED 2.00");
    id = id ?? Rx("");
  }

  Rx<String>? nikeAirMaxReact;

  Rx<String>? price;

  Rx<String>? quantity;

  Rx<String>? two;

  Rx<String>? washIron;

  Rx<String>? specialCare;

  Rx<String>? photosOfStrains;

  Rx<String>? image;

  Rx<String>? thisItemIsEligible;

  Rx<String>? price1;

  Rx<String>? id;
}
