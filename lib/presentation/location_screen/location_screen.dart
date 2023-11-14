import 'controller/location_controller.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class LocationScreen extends GetWidget<LocationController> {
  LocationScreen({Key? key})
      : super(
          key: key,
        );

  Completer<GoogleMapController> googleMapController = Completer();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup47,
                    height: 120.v,
                    width: 155.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 40.v,
                        right: 15.h,
                      ),
                      child: Text(
                        "lbl_help".tr,
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                    ),
                  ),
                  _buildTwentyFive(),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 18.h,
                        top: 110.v,
                        right: 18.h,
                      ),
                      decoration: AppDecoration.outlineBlack,
                      child: _buildColor(),
                    ),
                  ),
                  _buildConfirmLocation(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 64.v,
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVectorBlack90012x10,
        margin: EdgeInsets.only(
          left: 14.h,
          top: 12.v,
          bottom: 29.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 7.h),
        child: Column(
          children: [
            AppbarSubtitleOne(
              text: "lbl_back".tr,
              margin: EdgeInsets.only(right: 184.h),
            ),
            SizedBox(height: 7.v),
            AppbarTitle(
              text: "lbl_select_location".tr,
              margin: EdgeInsets.only(left: 93.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgQuestion,
          margin: EdgeInsets.only(
            left: 17.h,
            right: 17.h,
            bottom: 29.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwentyFive() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 739.v),
        padding: EdgeInsets.symmetric(vertical: 12.v),
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 36.v,
              width: 37.h,
              margin: EdgeInsets.only(
                top: 4.v,
                bottom: 16.v,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgHomePrimary,
                    height: 19.v,
                    width: 25.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 5.h),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "lbl_home2".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 16.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCartPrimary,
                    height: 22.v,
                    width: 25.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_cart".tr,
                      style: CustomTextStyles.labelLargePrimary,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 14.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBagBlack900,
                    height: 25.v,
                    width: 21.h,
                  ),
                  Text(
                    "lbl_new_order".tr,
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 16.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimary,
                    height: 21.v,
                    width: 25.h,
                  ),
                  Text(
                    "lbl_orders".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 1.v,
                bottom: 16.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorPrimary20x25,
                    height: 20.v,
                    width: 25.h,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 12.h),
                  ),
                  Text(
                    "lbl_account".tr,
                    style: theme.textTheme.labelLarge,
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
  Widget _buildColor() {
    return SizedBox(
      height: 507.v,
      width: 324.h,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmLocation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 98.h),
              child: Text(
                "lbl_your_location".tr,
                style: CustomTextStyles.titleSmallInterBlack900,
              ),
            ),
            SizedBox(height: 41.v),
            Container(
              width: 279.h,
              margin: EdgeInsets.only(right: 34.h),
              child: Text(
                "msg_villa_no_12_street".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallAlataBlack900,
              ),
            ),
            SizedBox(height: 88.v),
            CustomElevatedButton(
              text: "msg_confirm_location".tr,
              margin: EdgeInsets.only(
                left: 44.h,
                right: 46.h,
              ),
              alignment: Alignment.center,
            ),
            SizedBox(height: 88.v),
          ],
        ),
      ),
    );
  }
}
