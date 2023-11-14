import 'controller/account_controller.dart';
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
import 'package:mylaundryapp/widgets/custom_radio_button.dart';

// ignore_for_file: must_be_immutable
class AccountScreen extends GetWidget<AccountController> {
  const AccountScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(
                flex: 32,
              ),
              _buildGroup220(),
              Spacer(
                flex: 67,
              ),
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
        width: 197.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 42.h),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.h, 19.v, 135.h, 82.v),
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
              text: "lbl_language".tr,
              margin: EdgeInsets.only(
                left: 119.h,
                top: 46.v,
                bottom: 53.v,
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
  Widget _buildGroup220() {
    return Obx(
      () => Column(
        children: [
          CustomRadioButton(
            text: "lbl_english".tr,
            value: controller.accountModelObj.value.radioList.value[0],
            groupValue: controller.radioGroup.value,
            padding: EdgeInsets.fromLTRB(18.h, 9.v, 30.h, 9.v),
            onChange: (value) {
              controller.radioGroup.value = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: CustomRadioButton(
              text: "lbl3".tr,
              value: controller.accountModelObj.value.radioList.value[1],
              groupValue: controller.radioGroup.value,
              padding: EdgeInsets.fromLTRB(38.h, 8.v, 30.h, 8.v),
              onChange: (value) {
                controller.radioGroup.value = value;
              },
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
