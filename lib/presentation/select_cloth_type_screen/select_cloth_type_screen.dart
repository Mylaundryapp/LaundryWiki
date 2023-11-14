import 'controller/select_cloth_type_controller.dart';
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
import 'package:mylaundryapp/widgets/custom_drop_down.dart';
import 'package:mylaundryapp/widgets/custom_search_view.dart';
import 'package:mylaundryapp/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SelectClothTypeScreen extends GetWidget<SelectClothTypeController> {
  const SelectClothTypeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHelp(),
              SizedBox(height: 4.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 3.h,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Text(
                              "lbl_all_items".tr,
                              style:
                                  CustomTextStyles.titleSmallInterBluegray900,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Divider(
                          color: appTheme.blueGray800,
                          indent: 10.h,
                          endIndent: 8.h,
                        ),
                        SizedBox(height: 28.v),
                        _buildThirteen(),
                        _buildVector(),
                        SizedBox(height: 60.v),
                        _buildFourteen(),
                        SizedBox(height: 17.v),
                        _buildFifteen(),
                        SizedBox(height: 16.v),
                        _buildSixteen(),
                        SizedBox(height: 15.v),
                        _buildExpandableList(),
                      ],
                    ),
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
  Widget _buildHelp() {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        height: 132.v,
        width: 346.h,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup47,
              height: 132.v,
              width: 150.h,
              alignment: Alignment.centerLeft,
            ),
            CustomAppBar(
              height: 64.v,
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
                      margin: EdgeInsets.only(right: 142.h),
                    ),
                    SizedBox(height: 7.v),
                    AppbarTitle(
                      text: "lbl_laundry".tr,
                      margin: EdgeInsets.only(left: 94.h),
                    ),
                  ],
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                    bottom: 8.v,
                  ),
                  child: Column(
                    children: [
                      AppbarTrailingImage(
                        imagePath: ImageConstant.imgQuestion,
                        margin: EdgeInsets.symmetric(horizontal: 2.h),
                      ),
                      SizedBox(height: 3.v),
                      AppbarSubtitle(
                        text: "lbl_help".tr,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(bottom: 12.v),
                child: CustomSearchView(
                  width: 327.h,
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                  alignment: Alignment.bottomRight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirteen() {
    return SizedBox(
      height: 35.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 38.h,
                      right: 5.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_tops".tr,
                          style: CustomTextStyles.titleLargeRobotoBlack900Bold,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowDown,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(bottom: 3.v),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                Divider(),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTops1,
            height: 29.v,
            width: 27.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVector() {
    return SizedBox(
      height: 340.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(right: 2.h),
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 3.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 109.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 11.adaptSize,
                          width: 11.adaptSize,
                          margin: EdgeInsets.only(top: 5.v),
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          decoration: AppDecoration.outlineIndigoA,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVectorIndigoA700,
                            height: 6.v,
                            width: 9.h,
                            alignment: Alignment.center,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 9.h,
                            top: 2.v,
                          ),
                          child: Text(
                            "lbl_all".tr,
                            style: CustomTextStyles.bodySmallBlack900,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "lbl_female".tr,
                          style: CustomTextStyles.bodySmallBlack900,
                        ),
                        Container(
                          width: 70.h,
                          margin: EdgeInsets.only(left: 6.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(
                                () => CustomSwitch(
                                  value: controller.isSelectedSwitch.value,
                                  onChange: (value) {
                                    controller.isSelectedSwitch.value = value;
                                  },
                                ),
                              ),
                              Text(
                                "lbl_male".tr,
                                style: CustomTextStyles.bodySmallBlack900,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    children: [
                      _buildTwentyEight(
                        productImage: ImageConstant.imgProductImage110x90,
                        nikeAirMaxReact: "lbl_shirts".tr,
                        price: "lbl_aed_1_00".tr,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24.h),
                        child: _buildTwentyEight(
                          productImage: ImageConstant.imgProductImage1,
                          nikeAirMaxReact: "lbl_t_shirts".tr,
                          price: "lbl_aed_1_00".tr,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11.v),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32.v),
            child: _buildTwentyEight(
              productImage: ImageConstant.imgProductImage2,
              nikeAirMaxReact: "lbl_jacket_half".tr,
              price: "lbl_aed_1_00".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildTwentyEight(
              productImage: ImageConstant.imgProductImage,
              nikeAirMaxReact: "lbl_ladies_top".tr,
              price: "lbl_aed_1_00".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFourteen() {
    return SizedBox(
      height: 35.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomDropDown(
            width: 344.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 2.v, 5.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            hintText: "lbl_bottoms".tr,
            alignment: Alignment.bottomCenter,
            items: controller
                .selectClothTypeModelObj.value.dropdownItemList!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected(value);
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTops125x23,
            height: 25.v,
            width: 23.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen() {
    return SizedBox(
      height: 35.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomDropDown(
            width: 344.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 2.v, 5.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            hintText: "lbl_dresses".tr,
            alignment: Alignment.bottomCenter,
            items: controller
                .selectClothTypeModelObj.value.dropdownItemList1!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected1(value);
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTops11,
            height: 25.v,
            width: 23.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteen() {
    return SizedBox(
      height: 35.v,
      width: 344.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomDropDown(
            width: 344.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 2.v, 5.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            hintText: "lbl_suits".tr,
            alignment: Alignment.center,
            items: controller
                .selectClothTypeModelObj.value.dropdownItemList2!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected2(value);
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTops12,
            height: 25.v,
            width: 23.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExpandableList() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTops13,
                  height: 25.v,
                  width: 23.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "lbl_arabic_attire".tr,
                    style: CustomTextStyles.titleLargeRobotoBlack900Bold,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(top: 4.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Divider(),
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
  Widget _buildTwentyEight({
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
            style: CustomTextStyles.labelLargeLightblueA200.copyWith(
              color: appTheme.lightBlueA200,
            ),
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
