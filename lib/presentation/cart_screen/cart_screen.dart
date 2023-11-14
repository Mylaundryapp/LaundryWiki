import 'controller/cart_controller.dart';
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
import 'package:mylaundryapp/widgets/custom_checkbox_button.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_icon_button.dart';
import 'package:mylaundryapp/widgets/custom_switch.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CartScreen extends GetWidget<CartController> {
  const CartScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 540.v,
                width: 352.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup47,
                      height: 170.v,
                      width: 137.h,
                      alignment: Alignment.topLeft,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildFortyThree(),
                            SizedBox(height: 7.v),
                            _buildFortyFour(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13.v),
              _buildAddHangingDeliveryAEDextra(),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 13.h,
                ),
                child: _buildFortySeven(
                  hangerCharges: "lbl_sub_total".tr,
                  price: "lbl_aed_6_00".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 13.h,
                ),
                child: _buildFortySeven(
                  hangerCharges: "lbl_hanger_charges".tr,
                  price: "lbl_aed_0_00".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 13.h,
                ),
                child: _buildFortySeven(
                  hangerCharges: "msg_special_care_charges".tr,
                  price: "lbl_aed_1_002".tr,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.h,
                  right: 13.h,
                ),
                child: _buildFortySeven(
                  hangerCharges: "msg_total_including".tr,
                  price: "lbl_aed_7_00".tr,
                ),
              ),
              SizedBox(height: 5.v),
              CustomElevatedButton(
                width: 223.h,
                text: "msg_add_address_payment".tr,
              ),
              SizedBox(height: 7.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 65.v,
      leadingWidth: 23.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorBlack90012x10,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 12.v,
          bottom: 32.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_back".tr,
              margin: EdgeInsets.only(right: 119.h),
            ),
            SizedBox(height: 9.v),
            AppbarTitle(
              text: "lbl_cart".tr,
              margin: EdgeInsets.only(left: 115.h),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(
            left: 15.h,
            right: 15.h,
            bottom: 12.v,
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
              SizedBox(height: 1.v),
              AppbarSubtitle(
                text: "lbl_help".tr,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFortyThree() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        height: 168.v,
        width: 345.h,
        padding: EdgeInsets.symmetric(
          horizontal: 3.h,
          vertical: 7.v,
        ),
        decoration: AppDecoration.fillOnPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: _buildThirtyOne(
                      productImage: ImageConstant.imgProductImage,
                      nikeAirMaxReact: "lbl_ladies_top".tr,
                      price: "lbl_aed_1_00".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildQuantity(
                            quantity: "lbl_quantity".tr,
                            four: "lbl_2".tr,
                            thirtyNine: "lbl2".tr,
                          ),
                        ),
                        SizedBox(height: 7.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_iron_only".tr,
                                  style: CustomTextStyles.bodySmallGray600dd,
                                ),
                              ),
                              Container(
                                width: 113.h,
                                margin: EdgeInsets.only(left: 10.h),
                                child: Row(
                                  children: [
                                    Obx(
                                      () => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch.value,
                                        onChange: (value) {
                                          controller.isSelectedSwitch.value =
                                              value;
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_wash_iron".tr,
                                        style: CustomTextStyles
                                            .bodySmallIndigoA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 2.v,
                                bottom: 1.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 13.adaptSize,
                                        width: 13.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        decoration:
                                            AppDecoration.outlineIndigoA,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorIndigoA700,
                                          height: 8.v,
                                          width: 11.h,
                                          alignment: Alignment.center,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.h),
                                        child: Text(
                                          "msg_need_special_care".tr,
                                          style: CustomTextStyles
                                              .bodySmallBlack900_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 1.v),
                                  Text(
                                    "msg_photos_of_strains".tr,
                                    style: CustomTextStyles
                                        .bodySmallPoppinsIndigo500,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 37.v,
                              width: 45.h,
                              margin: EdgeInsets.only(left: 5.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 6.v,
                              ),
                              decoration: AppDecoration.fillPrimary.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCamera,
                                height: 21.v,
                                width: 25.h,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 24.v),
                        Container(
                          width: 201.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgProductImage,
                                height: 27.v,
                                width: 22.h,
                                radius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.v,
                                  bottom: 3.v,
                                ),
                                child: Text(
                                  "lbl_aed_2_00".tr,
                                  style: CustomTextStyles.labelLargeIndigoA700,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgLocation,
                                height: 10.v,
                                width: 15.h,
                                margin: EdgeInsets.only(
                                  left: 7.h,
                                  top: 9.v,
                                  bottom: 7.v,
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
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 29.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup35,
                      height: 10.adaptSize,
                      width: 10.adaptSize,
                      margin: EdgeInsets.only(
                        top: 1.v,
                        bottom: 3.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "msg_this_item_is_eligible".tr,
                        style: CustomTextStyles.bodySmallPoppinsErrorContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          SizedBox(
            height: 151.v,
            width: 319.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 5.h,
                      bottom: 1.v,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: _buildThirtyOne(
                            productImage: ImageConstant.imgProductImage3,
                            nikeAirMaxReact: "lbl_ladies_top".tr,
                            price: "lbl_aed_1_00".tr,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 30.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 2.h,
                                  right: 6.h,
                                ),
                                child: _buildQuantity(
                                  quantity: "lbl_quantity".tr,
                                  four: "lbl_4".tr,
                                  thirtyNine: "lbl2".tr,
                                ),
                              ),
                              SizedBox(height: 7.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.v),
                                      child: Text(
                                        "lbl_iron_only".tr,
                                        style:
                                            CustomTextStyles.bodySmallGray600dd,
                                      ),
                                    ),
                                    Container(
                                      width: 113.h,
                                      margin: EdgeInsets.only(left: 10.h),
                                      child: Row(
                                        children: [
                                          Obx(
                                            () => CustomSwitch(
                                              value: controller
                                                  .isSelectedSwitch1.value,
                                              onChange: (value) {
                                                controller.isSelectedSwitch1
                                                    .value = value;
                                              },
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 8.h),
                                            child: Text(
                                              "lbl_wash_iron".tr,
                                              style: CustomTextStyles
                                                  .bodySmallIndigoA700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 9.v),
                              Padding(
                                padding: EdgeInsets.only(left: 2.h),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 1.v,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Obx(
                                            () => CustomCheckboxButton(
                                              text: "msg_need_special_care".tr,
                                              value: controller
                                                  .needSpecialCare.value,
                                              onChange: (value) {
                                                controller.needSpecialCare
                                                    .value = value;
                                              },
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          Text(
                                            "msg_photos_of_strains".tr,
                                            style: CustomTextStyles
                                                .bodySmallPoppinsIndigo500,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 37.v,
                                      width: 45.h,
                                      margin: EdgeInsets.only(left: 5.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.h,
                                        vertical: 6.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillPrimary.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6,
                                      ),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgCamera,
                                        height: 21.v,
                                        width: 25.h,
                                        alignment: Alignment.topCenter,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Row(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgLocationRed800,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 1.v,
                                      bottom: 3.v,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 4.h),
                                    child: Text(
                                      "msg_not_eligible_for".tr,
                                      style: CustomTextStyles
                                          .bodySmallPoppinsRed800,
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
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 10.v,
                  width: 15.h,
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(bottom: 4.v),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 26.h),
                    child: Text(
                      "lbl_aed_4_00".tr,
                      style: CustomTextStyles.labelLargeIndigoA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_washing_instructions".tr,
                  style: CustomTextStyles.bodySmallPrimary,
                ),
                SizedBox(height: 4.v),
                CustomTextFormField(
                  controller: controller.placeholderController,
                  hintText: "msg_add_washing_instructions".tr,
                  hintStyle: CustomTextStyles.bodySmallGreen700_1,
                  textInputAction: TextInputAction.done,
                  maxLines: 4,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 11.v,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "msg_eg_do_not_iron".tr,
                  style: CustomTextStyles.bodySmallGreen700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddHangingDeliveryAEDextra() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.h,
          right: 50.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerLeft,
            text: "msg_add_hanging_delivery".tr,
            value: controller.addHangingDeliveryAEDextra.value,
            textStyle: CustomTextStyles.bodyMediumIndigoA200,
            onChange: (value) {
              controller.addHangingDeliveryAEDextra.value = value;
            },
          ),
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

  /// Common widget
  Widget _buildThirtyOne({
    required String productImage,
    required String nikeAirMaxReact,
    required String price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 116.v,
          width: 96.h,
          padding: EdgeInsets.symmetric(horizontal: 1.h),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: CustomImageView(
            imagePath: productImage,
            height: 110.v,
            width: 90.h,
            radius: BorderRadius.circular(
              5.h,
            ),
            alignment: Alignment.topLeft,
          ),
        ),
        SizedBox(height: 1.v),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            nikeAirMaxReact,
            style: CustomTextStyles.labelLargeIndigo900.copyWith(
              color: appTheme.indigo900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            price,
            style: CustomTextStyles.labelLargeGray600dd.copyWith(
              color: appTheme.gray600Dd,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildQuantity({
    required String quantity,
    required String four,
    required String thirtyNine,
  }) {
    return SizedBox(
      width: 202.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.v),
            child: Text(
              quantity,
              style: CustomTextStyles.bodySmallPoppinsPrimary.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Spacer(),
          CustomIconButton(
            height: 25.adaptSize,
            width: 25.adaptSize,
            padding: EdgeInsets.all(4.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgUPlus,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 27.h,
              top: 2.v,
            ),
            child: Text(
              four,
              style: CustomTextStyles.titleMediumBlack900.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Container(
            width: 25.adaptSize,
            margin: EdgeInsets.only(left: 22.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.fillPrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Text(
              thirtyNine,
              style: CustomTextStyles.labelLargeOnErrorContainerBold.copyWith(
                color: theme.colorScheme.onErrorContainer,
              ),
            ),
          ),
        ],
      ),
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
