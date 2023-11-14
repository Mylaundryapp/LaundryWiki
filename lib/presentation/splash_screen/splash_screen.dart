import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 39.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgLogo21290x290,
                        height: 290.adaptSize,
                        width: 290.adaptSize),
                    SizedBox(height: 73.v),
                    Text("msg_welcome_to_my_laundry".tr,
                        style: theme.textTheme.headlineSmall),
                    SizedBox(height: 31.v),
                    Container(
                        width: 253.h,
                        margin: EdgeInsets.only(left: 57.h, right: 48.h),
                        child: Text("msg_fresh_wear_anytime".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleMediumIndigo500)),
                    SizedBox(height: 79.v),
                    _buildGetStarted()
                  ])))
                ]))));
  }

  /// Section Widget
  Widget _buildGetStarted() {
    return SizedBox(
        height: 249.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgWaterTextureB,
              height: 201.v,
              width: 360.h,
              alignment: Alignment.topCenter),
          CustomElevatedButton(
              height: 61.v,
              width: 278.h,
              text: "lbl_get_started".tr,
              onPressed: () {
                Get.offNamed(
                  AppRoutes.gettingStartedScreen,
                );
              },
              margin: EdgeInsets.only(top: 61.v),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: CustomTextStyles.headlineSmallOnErrorContainer,
              alignment: Alignment.topCenter)
        ]));
  }
}
