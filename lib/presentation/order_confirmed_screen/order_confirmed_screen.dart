import 'controller/order_confirmed_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class OrderConfirmedScreen extends GetWidget<OrderConfirmedController> {
  const OrderConfirmedScreen({Key? key})
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
              _buildVector(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 21.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 6.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage3,
                      height: 272.v,
                      width: 343.h,
                    ),
                    SizedBox(height: 63.v),
                    Text(
                      "msg_order_placed_successfully".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                    SizedBox(height: 17.v),
                    SizedBox(
                      width: 210.h,
                      child: Text(
                        "msg_you_will_receive".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeOnPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 71.v),
                    CustomElevatedButton(
                      width: 223.h,
                      text: "msg_check_order_details".tr,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildVector() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 134.v,
        width: 347.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup47,
              height: 134.v,
              width: 160.h,
              alignment: Alignment.centerLeft,
            ),
            CustomAppBar(
              height: 66.v,
              leadingWidth: 25.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgVectorBlack90012x10,
                margin: EdgeInsets.only(
                  left: 15.h,
                  top: 12.v,
                  bottom: 29.v,
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Column(
                  children: [
                    AppbarSubtitleOne(
                      text: "lbl_back".tr,
                      margin: EdgeInsets.only(right: 187.h),
                    ),
                    SizedBox(height: 7.v),
                    AppbarTitle(
                      text: "msg_order_confirmed".tr,
                      margin: EdgeInsets.only(left: 82.h),
                    ),
                  ],
                ),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgQuestion,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 16.h,
                    bottom: 29.v,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 41.v),
                child: Text(
                  "lbl_help".tr,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home2:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      case BottomBarEnum.Neworder:
        return "/";
      case BottomBarEnum.Orders:
        return AppRoutes.homeContainerPage;
      case BottomBarEnum.Account:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeContainerPage:
        return HomeContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
