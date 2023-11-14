import 'controller/order_details_shipping_payment_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class OrderDetailsShippingPaymentScreen
    extends GetWidget<OrderDetailsShippingPaymentController> {
  const OrderDetailsShippingPaymentScreen({Key? key})
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
              _buildShippingAddress(),
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
                        child: _buildFortySeven(
                          hangerCharges: "lbl_sub_total".tr,
                          price: "lbl_aed_6_00".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortySeven(
                          hangerCharges: "lbl_hanger_charges".tr,
                          price: "lbl_aed_0_00".tr,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortySeven(
                          hangerCharges: "msg_special_care_charges".tr,
                          price: "lbl_aed_1_002".tr,
                        ),
                      ),
                      SizedBox(height: 5.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: _buildFortySeven(
                          hangerCharges: "msg_total_including".tr,
                          price: "lbl_aed_7_00".tr,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      CustomElevatedButton(
                        width: 223.h,
                        text: "lbl_place_order".tr,
                        margin: EdgeInsets.only(left: 43.h),
                        alignment: Alignment.centerLeft,
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
  Widget _buildShippingAddress() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 186.v,
        width: 347.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup47,
              height: 135.v,
              width: 144.h,
              alignment: Alignment.topLeft,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 2.h,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 11.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "msg_shipping_address".tr,
                      style: CustomTextStyles.bodyMediumAlataBluegray800,
                    ),
                    SizedBox(height: 6.v),
                    Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "msg_add_shipping_address".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 15.v,
                            width: 10.h,
                            margin: EdgeInsets.only(
                              top: 9.v,
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
                      margin: EdgeInsets.only(right: 167.h),
                    ),
                    SizedBox(height: 7.v),
                    AppbarTitle(
                      text: "lbl_order_details".tr,
                      margin: EdgeInsets.only(left: 94.h),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 13.h,
                    right: 13.h,
                    bottom: 6.v,
                  ),
                  child: Column(
                    children: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgQuestion,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          right: 3.h,
                        ),
                      ),
                      SizedBox(height: 4.v),
                      AppbarSubtitle(
                        text: "lbl_help".tr,
                      ),
                    ],
                  ),
                ),
              ],
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
          Text(
            "lbl_payment_method".tr,
            style: CustomTextStyles.bodyMediumAlataBluegray800,
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 9.h),
            child: Row(
              children: [
                Expanded(
                  child: Obx(
                    () => CustomRadioButton(
                      text: "msg_add_debit_credit".tr,
                      value: "msg_add_debit_credit".tr,
                      groupValue: controller.radioGroup.value,
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      },
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 15.v,
                  width: 10.h,
                  margin: EdgeInsets.only(
                    left: 37.h,
                    top: 7.v,
                    bottom: 7.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Divider(
            color: appTheme.gray600Dd,
          ),
          SizedBox(height: 10.v),
          Obx(
            () => CustomRadioButton(
              text: "msg_cash_on_delivery".tr,
              value: "msg_cash_on_delivery".tr,
              groupValue: controller.radioGroup1.value,
              onChange: (value) {
                controller.radioGroup1.value = value;
              },
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
  Widget _buildFortySeven({
    required String hangerCharges,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            hangerCharges,
            style: CustomTextStyles.bodyMediumPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.bodyMediumPrimary.copyWith(
            color: theme.colorScheme.primary,
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
