import 'controller/checkout_controller.dart';
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
class CheckoutScreen extends GetWidget<CheckoutController> {
  const CheckoutScreen({Key? key})
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
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.h,
                    vertical: 21.v,
                  ),
                  child: Column(
                    children: [
                      _buildFiftyFive(),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortyEight(
                          specialCareCharges: "lbl_sub_total".tr,
                          price: "lbl_aed_6_00".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortyNine(
                          totalIncluding: "lbl_hanger_charges".tr,
                          price: "lbl_aed_0_00".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortyEight(
                          specialCareCharges: "msg_special_care_charges".tr,
                          price: "lbl_aed_1_002".tr,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortyNine(
                          totalIncluding: "msg_total_including".tr,
                          price: "lbl_aed_7_00".tr,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      CustomElevatedButton(
                        width: 223.h,
                        text: "lbl_confirm_order".tr,
                      ),
                    ],
                  ),
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
        height: 186.v,
        width: 348.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup47,
              height: 122.v,
              width: 147.h,
              alignment: Alignment.topLeft,
            ),
            CustomAppBar(
              height: 67.v,
              leadingWidth: 25.h,
              leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgVectorBlack90012x10,
                margin: EdgeInsets.only(
                  left: 15.h,
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
                      margin: EdgeInsets.only(right: 143.h),
                    ),
                    SizedBox(height: 7.v),
                    AppbarTitle(
                      text: "lbl_check_out".tr,
                      margin: EdgeInsets.only(left: 94.h),
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
                    bottom: 30.v,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 3.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 9.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 1.v),
                    Text(
                      "msg_shipping_address".tr,
                      style: CustomTextStyles.bodyMediumAlataBluegray800,
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Row(
                        children: [
                          Text(
                            "msg_villa_2_zone_2".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 15.v,
                            width: 10.h,
                            margin: EdgeInsets.only(
                              left: 45.h,
                              top: 8.v,
                              bottom: 3.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
  Widget _buildFiftyFive() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_payment_method".tr,
              style: CustomTextStyles.bodyMediumAlataBluegray800,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            height: 41.v,
            width: 306.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(top: 6.v),
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 39.h,
                            right: 5.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "lbl_4187".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 15.v,
                                width: 10.h,
                                margin: EdgeInsets.symmetric(vertical: 6.v),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Divider(
                        color: appTheme.gray600Dd,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              children: [
                Container(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(bottom: 3.v),
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
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "msg_cash_on_delivery".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
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

  /// Common widget
  Widget _buildFortyEight({
    required String specialCareCharges,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            specialCareCharges,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primaryContainer,
            ),
          ),
        ),
        Text(
          price,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.primaryContainer,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFortyNine({
    required String totalIncluding,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_total".tr,
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(
                  text: "lbl_including_vat".tr,
                  style: CustomTextStyles.bodySmallPoppinsErrorContainer10,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Text(
          price,
          style: theme.textTheme.titleSmall!.copyWith(
            color: theme.colorScheme.errorContainer,
          ),
        ),
      ],
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
