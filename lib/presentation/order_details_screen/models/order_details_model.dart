import '../../../core/app_export.dart';
import 'orderdetails_item_model.dart';

/// This class defines the variables used in the [order_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderDetailsModel {
  Rx<List<OrderdetailsItemModel>> orderdetailsItemList = Rx([
    OrderdetailsItemModel(
        nikeAirMaxReact: "Ladies Top".obs,
        price: "AED 1.00".obs,
        quantity: "Quantity".obs,
        two: "2".obs,
        washIron: "Wash & Iron".obs,
        specialCare: "Special Care".obs,
        photosOfStrains: "Photos of strains & Damages".obs,
        image: ImageConstant.imgGroup35.obs,
        thisItemIsEligible: "This Item is eligible for Hanging delivery".obs,
        price1: "AED 2.00".obs)
  ]);
}
