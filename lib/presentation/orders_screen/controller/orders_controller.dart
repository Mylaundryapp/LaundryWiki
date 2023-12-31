import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/orders_screen/models/orders_model.dart';

/// A controller class for the OrdersScreen.
///
/// This class manages the state of the OrdersScreen, including the
/// current ordersModelObj
class OrdersController extends GetxController {
  Rx<OrdersModel> ordersModelObj = OrdersModel().obs;
}
