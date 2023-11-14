import '../order_details_screen/widgets/orderdetails_item_widget.dart';
import 'controller/order_details_controller.dart';
import 'models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/home_container_page/home_container_page.dart';
import 'package:mylaundryapp/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class OrderDetailsScreen extends GetWidget<OrderDetailsController> {
  const OrderDetailsScreen({Key? key})
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
              _buildSunOne(),
              SizedBox(height: 15.v),
              SizedBox(
                height: 582.v,
                width: 345.h,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildFiftySeven(),
                    _buildFifty(),
                    _buildOrderDetails(),
                  ],
                ),
              ),
              SizedBox(height: 8.v),
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
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 134.v,
                    width: 148.h,
                    padding: EdgeInsets.symmetric(vertical: 25.v),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup47,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSun1,
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                          alignment: Alignment.bottomLeft,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 54.h,
                              bottom: 24.v,
                            ),
                            child: Text(
                              "lbl_sunny".tr,
                              style: CustomTextStyles.labelMediumBluegray900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 37.v,
                    ),
                    child: Text(
                      "msg_welcome_back_suraj".tr,
                      style: CustomTextStyles.titleSmallBluegray900,
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
  Widget _buildFiftySeven() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 5.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "lbl_active_orders".tr,
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
            SizedBox(height: 12.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 6.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillLightBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                                    right: 7.h,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "msg_order_id_da001".tr,
                                        style:
                                            CustomTextStyles.titleSmallBlack900,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 6.v),
                                        child: Text(
                                          "lbl_hide_details".tr,
                                          style: CustomTextStyles
                                              .labelSmallIndigoA200,
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
                                        style:
                                            CustomTextStyles.labelLargeBlack900,
                                      ),
                                    ),
                                    Container(
                                      width: 96.h,
                                      margin: EdgeInsets.only(
                                        left: 22.h,
                                        bottom: 9.v,
                                      ),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 14.h,
                                        vertical: 2.v,
                                      ),
                                      decoration:
                                          AppDecoration.fillAmber.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder6,
                                      ),
                                      child: Text(
                                        "lbl_processing".tr,
                                        style: CustomTextStyles
                                            .labelLargeOnErrorContainer,
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
                  Divider(
                    color: appTheme.black900,
                    endIndent: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      right: 9.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 44.v,
                          width: 115.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "lbl_pick_up".tr,
                                  style: CustomTextStyles.labelMediumIndigoA700,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                              style:
                                                  theme.textTheme.labelMedium,
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
                        SizedBox(
                          height: 44.v,
                          width: 128.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "msg_delivery_expected".tr,
                                  style: CustomTextStyles.labelMediumIndigoA700,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
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
                            ],
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
    );
  }

  /// Section Widget
  Widget _buildFifty() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(4.h, 180.v, 13.h, 377.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_total".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    TextSpan(
                      text: "lbl_including_vat".tr,
                      style: CustomTextStyles.bodySmallPoppinsErrorContainer10,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              "lbl_aed_7_00".tr,
              style: theme.textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 203.v),
        child: Obx(
          () => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 7.v,
              );
            },
            itemCount: controller
                .orderDetailsModelObj.value.orderdetailsItemList.value.length,
            itemBuilder: (context, index) {
              OrderdetailsItemModel model = controller
                  .orderDetailsModelObj.value.orderdetailsItemList.value[index];
              return OrderdetailsItemWidget(
                model,
              );
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
