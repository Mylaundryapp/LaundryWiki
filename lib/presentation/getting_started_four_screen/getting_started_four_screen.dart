import 'controller/getting_started_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class GettingStartedFourScreen extends GetWidget<GettingStartedFourController> {
  const GettingStartedFourScreen({Key? key})
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
                        "lbl_prompt_delivery".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 109.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUndrawDeliveryTruckVt6p,
                        height: 221.v,
                        width: 360.h,
                      ),
                      SizedBox(height: 87.v),
                      Container(
                        width: 293.h,
                        margin: EdgeInsets.only(
                          left: 36.h,
                          right: 30.h,
                        ),
                        child: Text(
                          "msg_back_to_your_door".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumBluegray900,
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildSkip(),
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
  Widget _buildSkip() {
    return SizedBox(
      height: 252.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWaterTextureB161x360,
            height: 161.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(
                right: 11.h,
                bottom: 101.v,
              ),
              child: Text(
                "lbl_skip".tr,
                style: CustomTextStyles.titleSmallPrimaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 15.v,
              margin: EdgeInsets.only(
                left: 129.h,
                top: 71.v,
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
