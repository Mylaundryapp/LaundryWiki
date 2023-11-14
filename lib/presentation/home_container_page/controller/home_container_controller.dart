import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/models/home_container_model.dart';

/// A controller class for the HomeContainerPage.
///
/// This class manages the state of the HomeContainerPage, including the
/// current homeContainerModelObj
class HomeContainerController extends GetxController {
  HomeContainerController(this.homeContainerModelObj);

  Rx<HomeContainerModel> homeContainerModelObj;

  Rx<int> sliderIndex = 0.obs;
}
