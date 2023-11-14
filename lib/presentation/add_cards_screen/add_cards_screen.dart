import 'controller/add_cards_controller.dart';
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
class AddCardsScreen extends GetWidget<AddCardsController> {
  AddCardsScreen({Key? key})
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
              horizontal: 28.h,
              vertical: 21.v,
            ),
            child: Column(
              children: [
                CustomTextFormField(
                  controller: controller.cardNumberController,
                  hintText: "lbl_card_number".tr,
                  textInputType: TextInputType.number,
                  validator: (value) {
                    if (!isNumeric(value)) {
                      return "err_msg_please_enter_valid_number".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 17.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                  fillColor: appTheme.blueGray10001,
                ),
                SizedBox(height: 11.v),
                _buildCCV(),
                SizedBox(height: 11.v),
                CustomTextFormField(
                  controller: controller.nameController,
                  hintText: "msg_cardholder_s_name".tr,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 15.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                  fillColor: appTheme.blueGray10001,
                ),
                Spacer(),
                SizedBox(height: 52.v),
                CustomElevatedButton(
                  text: "lbl_save_card".tr,
                  margin: EdgeInsets.only(
                    left: 39.h,
                    right: 42.h,
                  ),
                ),
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
        width: 202.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 47.h),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.h, 19.v, 140.h, 82.v),
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
              text: "lbl_add_card".tr,
              margin: EdgeInsets.only(
                left: 128.h,
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
  Widget _buildCCV() {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 146.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Text(
              "lbl_ccv".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Container(
            width: 146.h,
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder6,
            ),
            child: Text(
              "lbl_exp_mm_yy".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
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
