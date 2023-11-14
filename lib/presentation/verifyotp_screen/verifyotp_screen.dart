import 'controller/verifyotp_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class VerifyotpScreen extends GetWidget<VerifyotpController> {
  const VerifyotpScreen({Key? key})
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
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  left: 87.h,
                  right: 81.h,
                ),
                child: Obx(
                  () => CustomPinCodeTextField(
                    context: Get.context!,
                    controller: controller.otpController.value,
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 62.h,
                    right: 40.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_00_30".tr,
                        style: CustomTextStyles.titleMediumRed800,
                      ),
                      Text(
                        "lbl_resend_otp".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 62.v),
              CustomElevatedButton(
                height: 50.v,
                width: 250.h,
                text: "lbl_verify_otp".tr,
                buttonStyle: CustomButtonStyles.fillBlueGray,
                buttonTextStyle:
                    CustomTextStyles.titleLargePoppinsOnErrorContainer,
              ),
              SizedBox(height: 73.v),
              CustomImageView(
                imagePath: ImageConstant.imgWaterTextureB202x360,
                height: 202.v,
                width: 360.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
