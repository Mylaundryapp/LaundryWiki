import 'controller/account_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AccountOneScreen extends GetWidget<AccountOneController> {
  const AccountOneScreen({Key? key})
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 26.v,
          ),
          child: Column(
            children: [
              _buildJohnDoe(),
              SizedBox(height: 51.v),
              _buildManageAdresses(),
              SizedBox(height: 16.v),
              _buildSixtyEight(),
              SizedBox(height: 16.v),
              _buildHelpSupport(),
              SizedBox(height: 16.v),
              _buildLanguage(),
              SizedBox(height: 17.v),
              Container(
                width: 330.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder15,
                ),
                child: Text(
                  "lbl_sign_out".tr,
                  style: CustomTextStyles.titleLargeRed800,
                ),
              ),
              SizedBox(height: 5.v),
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
      title: SizedBox(
        height: 120.v,
        width: 192.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 37.h),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.h, 19.v, 130.h, 82.v),
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
              text: "lbl_account".tr,
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
  Widget _buildJohnDoe() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 9.h,
          right: 25.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_john_doe".tr,
                  style: CustomTextStyles.bodyMediumAbelOnPrimaryContainer,
                ),
                SizedBox(height: 13.v),
                Text(
                  "msg_johmdoe001_gmail_com".tr,
                  style: CustomTextStyles.bodySmallAlataOnPrimaryContainer,
                ),
                SizedBox(height: 11.v),
                Text(
                  "lbl_971_224_7890".tr,
                  style: CustomTextStyles.bodyMediumAlataOnPrimaryContainer,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 31.v,
                bottom: 24.v,
              ),
              child: Text(
                "lbl_edit".tr,
                style: CustomTextStyles.bodyLargeAbelDeeppurpleA20019,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildManageAdresses() {
    return CustomTextFormField(
      controller: controller.manageAdressesController,
      hintText: "lbl_manage_adresses".tr,
      hintStyle: theme.textTheme.titleLarge!,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL15,
      fillColor: appTheme.blueGray10001,
    );
  }

  /// Section Widget
  Widget _buildSixtyEight() {
    return CustomTextFormField(
      controller: controller.sixtyEightController,
      hintText: "msg_manage_payment_methods".tr,
      hintStyle: theme.textTheme.titleLarge!,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL15,
      fillColor: appTheme.blueGray10001,
    );
  }

  /// Section Widget
  Widget _buildHelpSupport() {
    return CustomTextFormField(
      controller: controller.helpSupportController,
      hintText: "lbl_help_support".tr,
      hintStyle: theme.textTheme.titleLarge!,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL15,
      fillColor: appTheme.blueGray10001,
    );
  }

  /// Section Widget
  Widget _buildLanguage() {
    return CustomTextFormField(
      controller: controller.languageController,
      hintText: "lbl_language".tr,
      hintStyle: theme.textTheme.titleLarge!,
      textInputAction: TextInputAction.done,
      contentPadding: EdgeInsets.all(12.h),
      borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL15,
      fillColor: appTheme.blueGray10001,
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
