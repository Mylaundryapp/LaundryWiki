import 'controller/manage_cards_controller.dart';
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
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ManageCardsScreen extends GetWidget<ManageCardsController> {
  const ManageCardsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 31.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 85.h),
                  child: Text(
                    "msg_set_default_card".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ),
              SizedBox(height: 30.v),
              _buildView(),
              SizedBox(height: 24.v),
              _buildNinetyFive(),
              Spacer(),
              SizedBox(height: 41.v),
              CustomElevatedButton(
                width: 223.h,
                text: "lbl_add_new_card".tr,
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
        width: 231.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 76.h),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.h, 19.v, 169.h, 82.v),
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
              text: "lbl_manage_cards".tr,
              margin: EdgeInsets.only(
                left: 117.h,
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
  Widget _buildView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
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
            padding: EdgeInsets.only(
              left: 19.h,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_4187".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyFive() {
    return Container(
      width: 330.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 7.v),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 1.v,
                ),
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
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_4187".tr,
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_default_card".tr,
            style: CustomTextStyles.bodySmallAlataRed500,
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
