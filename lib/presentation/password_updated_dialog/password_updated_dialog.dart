import 'controller/password_updated_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';

class PasswordUpdatedDialog extends StatelessWidget {
  PasswordUpdatedDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PasswordUpdatedController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 308.h,
      padding: EdgeInsets.all(30.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_password_updated".tr,
            style: CustomTextStyles.titleLargeRobotoBlack900,
          ),
          SizedBox(height: 9.v),
          Opacity(
            opacity: 0.6,
            child: Container(
              width: 215.h,
              margin: EdgeInsets.only(
                left: 15.h,
                right: 16.h,
              ),
              child: Text(
                "msg_your_password_has".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumRobotoBlack900.copyWith(
                  height: 1.43,
                ),
              ),
            ),
          ),
          SizedBox(height: 34.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_profile".tr.toUpperCase(),
                  margin: EdgeInsets.only(right: 8.h),
                  buttonStyle: CustomButtonStyles.fillBlueGrayTL3,
                  buttonTextStyle: CustomTextStyles.titleSmallRobotoBlack900,
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  text: "lbl_home".tr,
                  margin: EdgeInsets.only(left: 8.h),
                  buttonStyle: CustomButtonStyles.fillBlueGrayTL31,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
