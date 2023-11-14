import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/account_screen/models/account_model.dart';

/// A controller class for the AccountScreen.
///
/// This class manages the state of the AccountScreen, including the
/// current accountModelObj
class AccountController extends GetxController {
  Rx<AccountModel> accountModelObj = AccountModel().obs;

  Rx<String> radioGroup = "".obs;
}
