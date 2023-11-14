import 'controller/manage_addresses_controller.dart';
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
class ManageAddressesScreen extends GetWidget<ManageAddressesController> {
  const ManageAddressesScreen({Key? key})
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
                  horizontal: 14.h,
                  vertical: 21.v,
                ),
                child: Column(
                  children: [
                    _buildSixtySeven(),
                    SizedBox(height: 11.v),
                    _buildSixtySeven1(),
                    SizedBox(height: 62.v),
                    CustomElevatedButton(
                      width: 223.h,
                      text: "lbl_add_new_address".tr,
                    ),
                    SizedBox(height: 5.v),
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
        width: 345.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup47,
              height: 120.v,
              width: 155.h,
              alignment: Alignment.topLeft,
            ),
            CustomAppBar(
              height: 65.v,
              leadingWidth: 24.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgVectorBlack90012x10,
                margin: EdgeInsets.only(
                  left: 14.h,
                  top: 12.v,
                  bottom: 30.v,
                ),
              ),
              title: Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Column(
                  children: [
                    AppbarSubtitleOne(
                      text: "lbl_back".tr,
                      margin: EdgeInsets.only(right: 148.h),
                    ),
                    SizedBox(height: 7.v),
                    AppbarTitle(
                      text: "lbl_addresses".tr,
                      margin: EdgeInsets.only(left: 94.h),
                    ),
                  ],
                ),
              ),
              actions: [
                AppbarTrailingImage(
                  imagePath: ImageConstant.imgQuestion,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    right: 17.h,
                    bottom: 30.v,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(top: 40.v),
                child: Text(
                  "lbl_help".tr,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "msg_set_default_address".tr,
                style: CustomTextStyles.titleLargeBlack900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven() {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(horizontal: 13.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 7.v),
                  decoration: BoxDecoration(
                    color: appTheme.blueGray10001,
                    borderRadius: BorderRadius.circular(
                      12.h,
                    ),
                    border: Border.all(
                      color: appTheme.indigoA700,
                      width: 2.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text(
                    "lbl_home2".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_edit".tr,
                    style: CustomTextStyles.bodyLargeAbelDeeppurpleA200,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            width: 279.h,
            margin: EdgeInsets.only(
              left: 3.h,
              right: 20.h,
            ),
            child: Text(
              "msg_villa_no_12_street".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallAlataBlack900,
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtySeven1() {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 3.v),
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.outlineIndigoA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Container(
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.indigo500,
                      borderRadius: BorderRadius.circular(
                        7.h,
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 54,
                ),
                Text(
                  "lbl_home_22".tr,
                  style: theme.textTheme.titleLarge,
                ),
                Spacer(
                  flex: 45,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Text(
                    "lbl_edit".tr,
                    style: CustomTextStyles.bodyLargeAbelDeeppurpleA200,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 279.h,
            margin: EdgeInsets.only(
              left: 3.h,
              right: 20.h,
            ),
            child: Text(
              "msg_villa_no_12_street".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallAlataBlack900,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "lbl_default_address".tr,
              style: CustomTextStyles.bodySmallAlataRed500,
            ),
          ),
          SizedBox(height: 5.v),
        ],
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
