import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/order_confirmed_screen/models/order_confirmed_model.dart';

/// A controller class for the OrderConfirmedScreen.
///
/// This class manages the state of the OrderConfirmedScreen, including the
/// current orderConfirmedModelObj
class OrderConfirmedController extends GetxController {
  Rx<OrderConfirmedModel> orderConfirmedModelObj = OrderConfirmedModel().obs;
}
