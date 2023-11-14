import 'controller/rating_feedback_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_rating_bar.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RatingFeedbackScreen extends GetWidget<RatingFeedbackController> {
  const RatingFeedbackScreen({Key? key})
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
              _buildSunOne(),
              SizedBox(height: 16.v),
              _buildPastOrders(),
              SizedBox(height: 11.v),
              _buildGroup147(),
              SizedBox(height: 18.v),
              Divider(
                color: appTheme.blueGray800,
                indent: 11.h,
                endIndent: 14.h,
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
  Widget _buildSunOne() {
    return Padding(
      padding: EdgeInsets.only(right: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 134.v,
            width: 302.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSun1,
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  alignment: Alignment.bottomLeft,
                  margin: EdgeInsets.only(bottom: 25.v),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    height: 134.v,
                    width: 165.h,
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 54.h,
                              vertical: 49.v,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup47,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 20.v),
                                Text(
                                  "lbl_sunny".tr,
                                  style:
                                      CustomTextStyles.labelMediumBluegray900,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 37.v),
                            child: Text(
                              "msg_welcome_back_suraj".tr,
                              style: CustomTextStyles.titleSmallBluegray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 192.h,
                    margin: EdgeInsets.only(bottom: 34.v),
                    child: Text(
                      "msg_its_a_perfect_day".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallPonnalaBluegray800,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 22.h,
              top: 11.v,
              bottom: 77.v,
            ),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgQuestion,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_help".tr,
                  style: CustomTextStyles.labelLargeBlack900,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPastOrders() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.h,
          right: 21.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_past_orders".tr,
              style: CustomTextStyles.titleMediumPrimaryContainer,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                bottom: 2.v,
              ),
              child: Text(
                "lbl_view_all".tr,
                style: CustomTextStyles.labelMediumBluegray900,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup147() {
    return Container(
      margin: EdgeInsets.only(
        left: 7.h,
        right: 16.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 6.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDryClean1,
                  height: 60.v,
                  width: 63.h,
                  margin: EdgeInsets.only(top: 11.v),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 9.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 1.h,
                            right: 6.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_order_id_da001".tr,
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 6.v),
                                child: Text(
                                  "lbl_view_details".tr,
                                  style: CustomTextStyles.labelSmallIndigoA200,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 126.h,
                              child: Text(
                                "msg_tuesday_10_oct".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeBlack900,
                              ),
                            ),
                            Container(
                              width: 96.h,
                              margin: EdgeInsets.only(
                                left: 22.h,
                                bottom: 9.v,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 13.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillLightGreen.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Text(
                                "lbl_completed".tr,
                                style:
                                    CustomTextStyles.labelLargeOnErrorContainer,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 47.v,
            width: 323.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 44.v,
                    width: 115.h,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "lbl_picked_up".tr,
                            style: CustomTextStyles.labelMediumIndigoA700,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "lbl_10_october_2023".tr,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVan2,
                                      height: 15.v,
                                      width: 34.h,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorBlack900,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 5.h,
                                        top: 3.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "lbl_09_45_pm".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 47.v,
                    width: 323.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 1.v,
                              right: 82.h,
                            ),
                            child: Text(
                              "lbl_delivered".tr,
                              style: CustomTextStyles.labelMediumIndigoA700,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            width: 323.h,
                            child: Divider(
                              color: appTheme.black900,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 7.h),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "lbl_11_october_2023".tr,
                                    style: theme.textTheme.labelSmall,
                                  ),
                                ),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgVan1,
                                      height: 15.v,
                                      width: 34.h,
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorBlack900,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      margin: EdgeInsets.only(
                                        left: 10.h,
                                        top: 3.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "lbl_09_45_pm".tr,
                                        style: theme.textTheme.labelMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Container(
            width: 314.h,
            margin: EdgeInsets.only(
              left: 6.h,
              right: 4.h,
            ),
            child: Text(
              "msg_your_feedback_is".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right: 9.h,
            ),
            child: CustomTextFormField(
              controller: controller.group147Controller,
              hintText: "msg_please_write_your".tr,
              hintStyle: CustomTextStyles.labelMediumGray500,
              textInputAction: TextInputAction.done,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 19.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
              fillColor: appTheme.blueGray10001,
            ),
          ),
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                "msg_thank_you_for_helping".tr,
                style: theme.textTheme.labelMedium,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 9.v,
                    bottom: 8.v,
                  ),
                  child: CustomRatingBar(
                    initialRating: 5,
                  ),
                ),
                CustomElevatedButton(
                  width: 81.h,
                  text: "lbl_submit".tr,
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
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
