import 'controller/reset_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/core/utils/validation_functions.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ResetPasswordScreen extends GetWidget<ResetPasswordController> {
  ResetPasswordScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 91.v),
                CustomImageView(
                  imagePath: ImageConstant.imgFingerprint,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 42.h),
                    child: Text(
                      "lbl_password".tr,
                      style: CustomTextStyles.titleMediumBluegray900,
                    ),
                  ),
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 35.h,
                    right: 36.h,
                  ),
                  child: Obx(
                    () => CustomTextFormField(
                      controller: controller.passwordController,
                      hintText: "lbl".tr,
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword.value =
                              !controller.isShowPassword.value;
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 21.v, 23.h, 21.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 16.v,
                            width: 25.h,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 60.v,
                      ),
                      validator: (value) {
                        if (value == null ||
                            (!isValidPassword(value, isRequired: true))) {
                          return "err_msg_please_enter_valid_password".tr;
                        }
                        return null;
                      },
                      obscureText: controller.isShowPassword.value,
                      contentPadding: EdgeInsets.only(
                        left: 21.h,
                        top: 18.v,
                        bottom: 18.v,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 61.v),
                CustomElevatedButton(
                  height: 50.v,
                  width: 250.h,
                  text: "lbl_reset_password".tr,
                  buttonStyle: CustomButtonStyles.fillBlueGray,
                  buttonTextStyle:
                      CustomTextStyles.titleLargePoppinsOnErrorContainer,
                ),
                SizedBox(height: 92.v),
                CustomImageView(
                  imagePath: ImageConstant.imgWaterTextureB218x360,
                  height: 218.v,
                  width: 360.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
