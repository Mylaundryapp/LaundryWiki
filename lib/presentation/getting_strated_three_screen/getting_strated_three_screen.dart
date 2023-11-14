import 'controller/getting_strated_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class GettingStratedThreeScreen
    extends GetWidget<GettingStratedThreeController> {
  const GettingStratedThreeScreen({Key? key})
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
                        "msg_immaculate_results".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(height: 12.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgUndrawWindowSIndigoA200,
                        height: 395.v,
                        width: 309.h,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 12.v),
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
      height: 280.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 252.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWaterTextureB194x360,
                    height: 194.v,
                    width: 360.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: 12.h,
                        bottom: 66.v,
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
                        left: 128.h,
                        top: 106.v,
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
              width: 236.h,
              child: Text(
                "msg_enjoy_the_bliss".tr,
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
