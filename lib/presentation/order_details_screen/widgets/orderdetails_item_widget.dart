import '../controller/order_details_controller.dart';
import '../models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  var controller = Get.find<OrderDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: theme.colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Container(
          height: 168.v,
          width: 345.h,
          padding: EdgeInsets.symmetric(
            horizontal: 3.h,
            vertical: 7.v,
          ),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 116.v,
                            width: 96.h,
                            padding: EdgeInsets.symmetric(horizontal: 1.h),
                            decoration: AppDecoration.fillBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgProductImage,
                              height: 110.v,
                              width: 90.h,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              alignment: Alignment.topLeft,
                            ),
                          ),
                          SizedBox(height: 1.v),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Obx(
                              () => Text(
                                orderdetailsItemModelObj.nikeAirMaxReact!.value,
                                style: CustomTextStyles.labelLargeIndigo900,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Obx(
                              () => Text(
                                orderdetailsItemModelObj.price!.value,
                                style: CustomTextStyles.labelLargeGray600dd,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 154.h,
                              margin: EdgeInsets.only(right: 4.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 7.v),
                                    child: Obx(
                                      () => Text(
                                        orderdetailsItemModelObj
                                            .quantity!.value,
                                        style: CustomTextStyles
                                            .bodySmallPoppinsPrimary,
                                      ),
                                    ),
                                  ),
                                  Obx(
                                    () => Text(
                                      orderdetailsItemModelObj.two!.value,
                                      style:
                                          CustomTextStyles.titleMediumBlack900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7.v),
                            Obx(
                              () => Text(
                                orderdetailsItemModelObj.washIron!.value,
                                style: CustomTextStyles.bodySmallIndigoA700,
                              ),
                            ),
                            SizedBox(height: 14.v),
                            Obx(
                              () => Text(
                                orderdetailsItemModelObj.specialCare!.value,
                                style: CustomTextStyles.bodySmallBlack900_1,
                              ),
                            ),
                            SizedBox(height: 3.v),
                            Obx(
                              () => Text(
                                orderdetailsItemModelObj.photosOfStrains!.value,
                                style:
                                    CustomTextStyles.bodySmallPoppinsIndigo500,
                              ),
                            ),
                            SizedBox(height: 25.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgProductImage,
                              height: 27.v,
                              width: 22.h,
                              radius: BorderRadius.circular(
                                5.h,
                              ),
                              margin: EdgeInsets.only(left: 6.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 29.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: orderdetailsItemModelObj.image!.value,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            bottom: 3.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: Obx(
                          () => Text(
                            orderdetailsItemModelObj.thisItemIsEligible!.value,
                            style:
                                CustomTextStyles.bodySmallPoppinsErrorContainer,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLocation,
                height: 10.v,
                width: 15.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 16.h,
                  bottom: 7.v,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 39.h,
                    bottom: 3.v,
                  ),
                  child: Obx(
                    () => Text(
                      orderdetailsItemModelObj.price1!.value,
                      style: CustomTextStyles.labelLargeIndigoA700,
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
}
