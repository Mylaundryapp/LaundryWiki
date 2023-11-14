import '../../../core/app_export.dart';

/// This class defines the variables used in the [select_services_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectServicesModel {
  Rx<List<String>> radioList = Rx(["lbl_wash", "lbl_dry_clean", "lbl_ironing"]);
}
