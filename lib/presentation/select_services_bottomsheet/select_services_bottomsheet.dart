import 'controller/select_services_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/widgets/custom_checkbox_button.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_icon_button.dart';
import 'package:mylaundryapp/widgets/custom_radio_button.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

class SelectServicesBottomsheet extends StatelessWidget {
  SelectServicesBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SelectServicesController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 357.h,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 101.h),
              child: Text(
                "lbl_select_services".tr,
                style: CustomTextStyles.titleSmallInterBluegray900,
              ),
            ),
          ),
          SizedBox(height: 7.v),
          Divider(
            color: appTheme.gray500,
            indent: 5.h,
            endIndent: 4.h,
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 13.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Column(
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
                        child: Text(
                          "lbl_ladies_top".tr,
                          style: CustomTextStyles.labelLargeIndigo900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "lbl_aed_1_00".tr,
                          style: CustomTextStyles.labelLargeGray600dd,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 202.h,
                          margin: EdgeInsets.only(right: 8.h),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8.v),
                                child: Text(
                                  "lbl_quantity".tr,
                                  style:
                                      CustomTextStyles.bodySmallPoppinsPrimary,
                                ),
                              ),
                              Spacer(),
                              CustomIconButton(
                                height: 25.adaptSize,
                                width: 25.adaptSize,
                                padding: EdgeInsets.all(4.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgUPlus,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 27.h),
                                child: Text(
                                  "lbl_2".tr,
                                  style: CustomTextStyles.titleMediumBlack900,
                                ),
                              ),
                              Container(
                                width: 25.adaptSize,
                                margin: EdgeInsets.only(left: 23.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8.h,
                                  vertical: 3.v,
                                ),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Text(
                                  "lbl2".tr,
                                  style: CustomTextStyles
                                      .labelLargeOnErrorContainerBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Obx(
                        () => Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: CustomRadioButton(
                                text: "lbl_wash".tr,
                                value: controller.selectServicesModelObj.value
                                    .radioList.value[0],
                                groupValue: controller.quantity.value,
                                textStyle:
                                    CustomTextStyles.bodySmallAlataIndigoA700,
                                onChange: (value) {
                                  controller.quantity.value = value;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 17.h),
                              child: CustomRadioButton(
                                text: "lbl_dry_clean".tr,
                                value: controller.selectServicesModelObj.value
                                    .radioList.value[1],
                                groupValue: controller.quantity.value,
                                textStyle:
                                    CustomTextStyles.bodySmallAlataBlack900,
                                onChange: (value) {
                                  controller.quantity.value = value;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: CustomRadioButton(
                                text: "lbl_ironing".tr,
                                value: controller.selectServicesModelObj.value
                                    .radioList.value[2],
                                groupValue: controller.quantity.value,
                                textStyle:
                                    CustomTextStyles.bodySmallAlataBlack900,
                                onChange: (value) {
                                  controller.quantity.value = value;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 2.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Obx(
                                  () => CustomCheckboxButton(
                                    text: "msg_need_special_care".tr,
                                    value: controller.needSpecialCare.value,
                                    onChange: (value) {
                                      controller.needSpecialCare.value = value;
                                    },
                                  ),
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "msg_photos_of_strains".tr,
                                  style: CustomTextStyles
                                      .bodySmallPoppinsIndigo500,
                                ),
                                SizedBox(height: 25.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgProductImage,
                                  height: 27.v,
                                  width: 22.h,
                                  radius: BorderRadius.circular(
                                    5.h,
                                  ),
                                  margin: EdgeInsets.only(left: 5.h),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 37.v,
                            width: 45.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              bottom: 51.v,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.h,
                              vertical: 6.v,
                            ),
                            decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder6,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCamera,
                              height: 21.v,
                              width: 25.h,
                              alignment: Alignment.topCenter,
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
          SizedBox(height: 6.v),
          Divider(
            color: appTheme.gray500,
            indent: 9.h,
          ),
          SizedBox(height: 3.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup35,
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Text(
                      "msg_this_item_is_eligible".tr,
                      style: CustomTextStyles.bodySmallPoppinsErrorContainer,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 3.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_washing_instructions".tr,
                  style: CustomTextStyles.bodySmallPrimary,
                ),
                SizedBox(height: 4.v),
                CustomTextFormField(
                  controller: controller.placeholderController,
                  hintText: "msg_add_washing_instructions".tr,
                  hintStyle: CustomTextStyles.bodySmallGreen700_1,
                  textInputAction: TextInputAction.done,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 24.v,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  "msg_eg_do_not_iron".tr,
                  style: CustomTextStyles.bodySmallGreen700,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Opacity(
                  opacity: 0.5,
                  child: CustomElevatedButton(
                    width: 128.h,
                    text: "lbl_done".tr,
                    buttonStyle: CustomButtonStyles.fillSecondaryContainer,
                  ),
                ),
                CustomElevatedButton(
                  width: 128.h,
                  text: "lbl_view_cart".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
