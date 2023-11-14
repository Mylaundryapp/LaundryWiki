import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Splash Screen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Getting Started".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.gettingStartedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Getting Started Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.gettingStartedTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Getting Strated Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.gettingStratedThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Getting started Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.gettingStartedFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reset Password".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.resetPasswordScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Register".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.registerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "VerifyOtp".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.verifyotpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home - Container".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeContainer1Screen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "New Order".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.newOrderScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Select Cloth Type".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.selectClothTypeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Cart".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Details Shipping & Payment\\".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.orderDetailsShippingPaymentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Checkout".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.checkoutScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Confirmed".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderConfirmedScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Rating & Feedback".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ratingFeedbackScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Orders".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.ordersScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Order Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.orderDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.accountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Save Address".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.saveAddressScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manage Addresses".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.manageAddressesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Location".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.locationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Manage Cards".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.manageCardsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Add Cards".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addCardsScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
