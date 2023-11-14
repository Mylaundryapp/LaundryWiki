import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/password_updated_dialog/models/password_updated_model.dart';

/// A controller class for the PasswordUpdatedDialog.
///
/// This class manages the state of the PasswordUpdatedDialog, including the
/// current passwordUpdatedModelObj
class PasswordUpdatedController extends GetxController {
  Rx<PasswordUpdatedModel> passwordUpdatedModelObj = PasswordUpdatedModel().obs;
}
