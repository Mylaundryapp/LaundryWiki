import 'controller/getting_started_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class GettingStartedTwoScreen extends GetWidget<GettingStartedTwoController> {
  const GettingStartedTwoScreen({Key? key})
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
                        "msg_real_time_tracking".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 15.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUndrawRealTime,
                        height: 375.v,
                        width: 315.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 14.h),
                      ),
                      SizedBox(height: 28.v),
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
      height: 261.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 252.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWaterTextureB214x360,
                    height: 214.v,
                    width: 360.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 10.h,
                        bottom: 47.v,
                      ),
                      child: Text(
                        "lbl_skip".tr,
                        style: CustomTextStyles.titleSmallPrimaryContainer,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 15.v,
                      margin: EdgeInsets.only(
                        left: 130.h,
                        bottom: 112.v,
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
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 308.h,
              child: Text(
                "msg_watch_as_we_whisk".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleMediumBluegray900,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
