import 'controller/save_address_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/core/utils/validation_functions.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SaveAddressScreen extends GetWidget<SaveAddressController> {
  SaveAddressScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 31.h,
              vertical: 11.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 478.v,
                  width: 289.h,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 14.h,
                            top: 48.v,
                          ),
                          child: Text(
                            "lbl_john_doe".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 14.h,
                            top: 132.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_john_doe".tr,
                                style: theme.textTheme.titleMedium,
                              ),
                              SizedBox(height: 65.v),
                              SizedBox(
                                width: 247.h,
                                child: Text(
                                  "msg_mbz_city_abu_dhabi".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodyLargeBlack900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildSeventy(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 23.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text(
                                  "msg_villa_building".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              SizedBox(height: 16.v),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  "lbl_po_box".tr,
                                  style:
                                      CustomTextStyles.titleMediumBluegray900,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              _buildYourPOBoxnumber(),
                              SizedBox(height: 250.v),
                              _buildAddress(),
                            ],
                          ),
                        ),
                      ),
                      _buildSeventyTwo(),
                    ],
                  ),
                ),
                SizedBox(height: 47.v),
                _buildSaveAddress(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: SizedBox(
        height: 120.v,
        width: 191.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 36.h),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.h, 19.v, 129.h, 82.v),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgVectorBlack90012x10,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                  AppbarSubtitleOne(
                    text: "lbl_back".tr,
                    margin: EdgeInsets.only(left: 7.h),
                  ),
                ],
              ),
            ),
            AppbarTitle(
              text: "lbl_address".tr,
              margin: EdgeInsets.only(
                left: 125.h,
                top: 45.v,
                bottom: 54.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(15.h, 11.v, 15.h, 61.v),
          child: Column(
            children: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgQuestion,
                margin: EdgeInsets.symmetric(horizontal: 2.h),
              ),
              SizedBox(height: 5.v),
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
  Widget _buildEditText() {
    return CustomTextFormField(
      controller: controller.editTextController,
    );
  }

  /// Section Widget
  Widget _buildSeventy() {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "msg_enter_room_flat".tr,
              style: CustomTextStyles.titleMediumBluegray900,
            ),
          ),
          SizedBox(height: 6.v),
          _buildEditText(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourPOBoxnumber() {
    return CustomTextFormField(
      controller: controller.yourPOBoxnumberController,
      hintText: "msg_your_po_box_number".tr,
      textInputType: TextInputType.number,
      validator: (value) {
        if (!isNumeric(value)) {
          return "err_msg_please_enter_valid_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: CustomTextFormField(
        width: 76.h,
        controller: controller.addressController,
        hintText: "lbl_john_doe".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress1() {
    return CustomTextFormField(
      controller: controller.addressController1,
      hintText: "msg_home_office".tr,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSeventyTwo() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Text(
              "lbl_save_address_as".tr,
              style: CustomTextStyles.titleMediumBluegray900,
            ),
          ),
          SizedBox(height: 5.v),
          _buildAddress1(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveAddress() {
    return CustomElevatedButton(
      text: "lbl_save_address".tr,
      margin: EdgeInsets.only(
        left: 41.h,
        right: 34.h,
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
