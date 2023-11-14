import 'controller/getting_started_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class GettingStartedScreen extends GetWidget<GettingStartedController> {
  const GettingStartedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 121.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        "msg_effortless_scheduling".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 26.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUndrawPickup1,
                        height: 383.v,
                        width: 360.h,
                      ),
                      SizedBox(height: 18.v),
                      Text(
                        "msg_book_a_pickup_at".tr,
                        style: CustomTextStyles.titleMediumBluegray900,
                      ),
                      _buildSkip(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSkip(BuildContext context) {
    return SizedBox(
      height: 249.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWaterTextureB192x360,
            height: 192.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 11.h,
                bottom: 68.v,
              ),
              child: GestureDetector(
                onTap: () {
                  Get.offNamed(
                    AppRoutes.loginScreen,
                  );
                },
                child: Text(
                  "lbl_skip".tr,
                  style: CustomTextStyles.titleSmallPrimaryContainer,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 15.v,
              margin: EdgeInsets.only(
                left: 129.h,
                top: 101.v,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 4,
                effect: ScrollingDotsEffect(
                  spacing: 10,
                  activeDotColor: theme.colorScheme.primaryContainer,
                  dotColor: appTheme.blueGray900,
                  dotHeight: 15.v,
                  dotWidth: 15.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
