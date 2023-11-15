import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../home_container_page/widgets/deliverymanun_item_widget.dart';
import '../home_container_page/widgets/homecontainer_item_widget.dart';
import 'controller/home_container_controller.dart';
import 'models/deliverymanun_item_model.dart';
import 'models/home_container_model.dart';
import 'models/homecontainer_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/animated_bubble.dart';

class HomeContainerPage extends StatelessWidget {
  HomeContainerPage({Key? key})
      : super(
          key: key,
        );

  HomeContainerController controller =
      Get.put(HomeContainerController(HomeContainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    double bubbleSize1 = 50.0; // First bubble size
    double bubbleSize2 = 25.0; // Second bubble size

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Main content container
            Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnErrorContainer,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 75.0), // Adjust for AnimatedBubble overlay
                    _buildSunOne(),
                    SizedBox(height: 9.v),
                    SizedBox(
                      height: 12.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 4,
                        effect: ScrollingDotsEffect(
                          spacing: 8.65,
                          activeDotColor: theme.colorScheme.primaryContainer,
                          dotColor: appTheme.blueGray900,
                          dotHeight: 12.v,
                          dotWidth: 12.h,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
                    _buildNinetyTwo(),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          "msg_your_laundry_simplified".tr,
                          style: CustomTextStyles.titleMediumPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildHomeContainer(),
                    SizedBox(height: 5.v),
                    _buildActiveOrders(),
                    SizedBox(height: 12.v),
                    _buildNinetyOne(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
            // AnimatedBubble widgets
            Positioned(
              left: -50.0,
              top: 0.0,
              child: Opacity(
                opacity: 0.3,
                child: AnimatedBubble(
                  size: 100.0,
                  x: 0.0,
                  y: -50.0,
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              top: -50.0,
              child: Opacity(
                opacity: 0.3,
                child: AnimatedBubble(
                  size: 100.0,
                  x: -50.0,
                  y: 0.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSunOne() {
    return SizedBox(
      height: 281.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 134.v,
              width: 148.h,
              padding: EdgeInsets.symmetric(vertical: 25.v),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup47,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSun1,
                    height: 58.adaptSize,
                    width: 58.adaptSize,
                    alignment: Alignment.bottomLeft,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 54.h,
                        bottom: 24.v,
                      ),
                      child: Text(
                        "lbl_sunny".tr,
                        style: CustomTextStyles.labelMediumBluegray900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 11.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgQuestion,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_help".tr,
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 14.h,
                top: 37.v,
              ),
              child: Text(
                "msg_welcome_back_suraj".tr,
                style: CustomTextStyles.titleSmallBluegray900,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 192.h,
              margin: EdgeInsets.only(
                top: 64.v,
                right: 50.h,
              ),
              child: Text(
                "msg_its_a_perfect_day".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallPonnalaBluegray800,
              ),
            ),
          ),
          Obx(
            () => CarouselSlider.builder(
              options: CarouselOptions(
                height: 172.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  controller.sliderIndex.value = index;
                },
              ),
              itemCount: controller.homeContainerModelObj.value
                  .deliverymanunItemList.value.length,
              itemBuilder: (context, index, realIndex) {
                DeliverymanunItemModel model = controller.homeContainerModelObj
                    .value.deliverymanunItemList.value[index];
                return DeliverymanunItemWidget(
                  model,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyTwo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 9.h),
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBluegray900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgInfo,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Text(
              "msg_clothing_care_tips".tr,
              style: CustomTextStyles.titleMediumInterOnErrorContainer,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              right: 2.h,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_read_now".tr,
              style: CustomTextStyles.bodyMediumInterOnErrorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeContainer() {
    return SizedBox(
      height: 112.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(
            left: 13.h,
            right: 8.h,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 344.0.h,
              child: Divider(
                height: 3.v,
                thickness: 3.v,
                color: appTheme.blueGray800,
                indent: 4.5.h,
                endIndent: 4.5.h,
              ),
            );
          },
          itemCount: controller
              .homeContainerModelObj.value.homecontainerItemList.value.length,
          itemBuilder: (context, index) {
            HomecontainerItemModel model = controller
                .homeContainerModelObj.value.homecontainerItemList.value[index];
            return HomecontainerItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActiveOrders() {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 14.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_active_orders".tr,
            style: CustomTextStyles.titleMediumPrimaryContainer,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.labelMediumBluegray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOne() {
    return Container(
      margin: EdgeInsets.only(
        left: 14.h,
        right: 9.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 1.v,
      ),
      decoration: AppDecoration.fillLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 2.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDryClean1,
                    height: 60.v,
                    width: 63.h,
                    margin: EdgeInsets.only(top: 18.v),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        bottom: 5.v,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 1.h,
                              right: 5.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 6.v),
                                  child: Text(
                                    "msg_order_id_da001".tr,
                                    style: CustomTextStyles.titleSmallBlack900,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 13.v),
                                  child: Text(
                                    "lbl_view_details".tr,
                                    style:
                                        CustomTextStyles.labelSmallIndigoA200,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 126.h,
                                child: Text(
                                  "msg_tuesday_10_oct".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.labelLargeBlack900,
                                ),
                              ),
                              Container(
                                width: 96.h,
                                margin: EdgeInsets.only(
                                  left: 22.h,
                                  bottom: 9.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 14.h,
                                  vertical: 2.v,
                                ),
                                decoration: AppDecoration.fillAmber.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                                child: Text(
                                  "lbl_processing".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainer,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 9.v),
            Divider(
              color: appTheme.black900,
            ),
            SizedBox(height: 6.v),
            Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                right: 9.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 44.v,
                    width: 115.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "lbl_pick_up".tr,
                            style: CustomTextStyles.labelMediumIndigoA700,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "lbl_10_october_2023".tr,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVan2,
                                      height: 15.v,
                                      width: 34.h,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorBlack900,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 3.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "lbl_09_45_pm".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 44.v,
                    width: 128.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "msg_delivery_expected".tr,
                            style: CustomTextStyles.labelMediumIndigoA700,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "lbl_11_october_2023".tr,
                                  style: theme.textTheme.labelSmall,
                                ),
                              ),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVan1,
                                    height: 15.v,
                                    width: 34.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVectorBlack900,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 10.h,
                                      top: 3.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.h),
                                    child: Text(
                                      "lbl_09_45_pm".tr,
                                      style: theme.textTheme.labelMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
