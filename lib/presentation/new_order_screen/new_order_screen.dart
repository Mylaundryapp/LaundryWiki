import '../new_order_screen/widgets/neworder_item_widget.dart';
import 'controller/new_order_controller.dart';
import 'models/neworder_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title_searchview.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';
import 'package:mylaundryapp/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class NewOrderScreen extends GetWidget<NewOrderController> {
  const NewOrderScreen({Key? key})
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
            horizontal: 3.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text(
                    "lbl_all_items".tr,
                    style: CustomTextStyles.titleSmallInterBluegray900,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              Divider(
                color: appTheme.blueGray800,
                indent: 13.h,
                endIndent: 10.h,
              ),
              SizedBox(height: 28.v),
              _buildThirteen(),
              SizedBox(height: 16.v),
              _buildFourteen(),
              SizedBox(height: 17.v),
              _buildFifteen(),
              SizedBox(height: 16.v),
              _buildSixteen(),
              SizedBox(height: 16.v),
              _buildSeventeen(),
              SizedBox(height: 20.v),
              _buildNewOrder(),
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
      height: 130.v,
      centerTitle: true,
      title: SizedBox(
        height: 130.v,
        width: 349.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 190.h),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 321.h,
                top: 10.v,
                bottom: 74.v,
              ),
              child: Column(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgQuestion,
                    margin: EdgeInsets.symmetric(horizontal: 2.h),
                  ),
                  SizedBox(height: 3.v),
                  AppbarSubtitleOne(
                    text: "lbl_help".tr,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(18.h, 18.v, 283.h, 93.v),
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
              text: "lbl_laundry".tr,
              margin: EdgeInsets.fromLTRB(129.h, 44.v, 141.h, 65.v),
            ),
            AppbarTitleSearchview(
              margin: EdgeInsets.fromLTRB(16.h, 76.v, 6.h, 10.v),
              hintText: "lbl_search".tr,
              controller: controller.searchController,
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
          CustomDropDown(
            width: 344.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(30.h, 1.v, 5.h, 11.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowDown,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            hintText: "lbl_tops2".tr,
            alignment: Alignment.bottomCenter,
            items: controller.newOrderModelObj.value.dropdownItemList!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected(value);
            },
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
            items: controller.newOrderModelObj.value.dropdownItemList1!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected1(value);
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
            items: controller.newOrderModelObj.value.dropdownItemList2!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected2(value);
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
            items: controller.newOrderModelObj.value.dropdownItemList3!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected3(value);
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
  Widget _buildSeventeen() {
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
            hintText: "lbl_arabic_attire".tr,
            alignment: Alignment.center,
            items: controller.newOrderModelObj.value.dropdownItemList4!.value,
            contentPadding: EdgeInsets.only(left: 30.h),
            onChanged: (value) {
              controller.onSelected4(value);
            },
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTops13,
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
  Widget _buildNewOrder() {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 18.v,
            );
          },
          itemCount:
              controller.newOrderModelObj.value.neworderItemList.value.length,
          itemBuilder: (context, index) {
            NeworderItemModel model =
                controller.newOrderModelObj.value.neworderItemList.value[index];
            return NeworderItemWidget(
              model,
            );
          },
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
