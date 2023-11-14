import 'controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/core/utils/validation_functions.dart';
import 'package:mylaundryapp/widgets/custom_checkbox_button.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterScreen extends GetWidget<RegisterController> {
  RegisterScreen({Key? key})
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
                SizedBox(height: 56.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          "lbl_register".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        SizedBox(height: 39.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Text(
                              "lbl_name".tr,
                              style: CustomTextStyles.titleMediumBluegray900,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildName(),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Text(
                              "lbl_email_id".tr,
                              style: CustomTextStyles.titleMediumBluegray900,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildEmail(),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Text(
                              "lbl_mobile".tr,
                              style: CustomTextStyles.titleMediumBluegray900,
                            ),
                          ),
                        ),
                        SizedBox(height: 6.v),
                        _buildMobileNo(),
                        SizedBox(height: 15.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 47.h),
                            child: Text(
                              "lbl_password".tr,
                              style: CustomTextStyles.titleMediumBluegray900,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        _buildPassword(),
                        SizedBox(height: 41.v),
                        _buildIacceptandagreetotheTermsCondi(),
                        SizedBox(height: 4.v),
                        _buildRegister1(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: controller.nameController,
        hintText: "lbl_john_doe".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: controller.emailController,
        hintText: "lbl_john_doe_com".tr,
        textInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value == null || (!isValidEmail(value, isRequired: true))) {
            return "err_msg_please_enter_valid_email".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNo() {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: controller.mobileNoController,
        hintText: "lbl_0000000000".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 31.h,
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
              margin: EdgeInsets.fromLTRB(30.h, 21.v, 19.h, 21.v),
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: controller.isShowPassword.value,
          contentPadding: EdgeInsets.only(
            left: 14.h,
            top: 18.v,
            bottom: 18.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIacceptandagreetotheTermsCondi() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 45.h,
          right: 24.h,
        ),
        child: Obx(
          () => CustomCheckboxButton(
            alignment: Alignment.centerRight,
            text: "msg_i_accept_and_agree".tr,
            isExpandedText: true,
            value: controller.iacceptandagreetotheTermsCondi.value,
            textStyle: CustomTextStyles.bodyMedium14,
            onChange: (value) {
              controller.iacceptandagreetotheTermsCondi.value = value;
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegister() {
    return CustomElevatedButton(
      height: 50.v,
      text: "lbl_register".tr,
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleLargePoppinsOnErrorContainer,
    );
  }

  /// Section Widget
  Widget _buildRegister1() {
    return SizedBox(
      height: 252.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWaterTextureB174x360,
            height: 174.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 55.h,
                top: 29.v,
                right: 55.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRegister(),
                  SizedBox(height: 15.v),
                  Padding(
                    padding: EdgeInsets.only(left: 47.h),
                    child: Text(
                      "msg_already_user_sign".tr,
                      style: CustomTextStyles.bodyMedium14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
