import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_title_image.dart';
import 'package:mylaundryapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:mylaundryapp/widgets/app_bar/custom_app_bar.dart';

import '../../widgets/app_bar/appbar_title.dart';
import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/core/utils/validation_functions.dart';
import 'package:mylaundryapp/widgets/custom_elevated_button.dart';
import 'package:mylaundryapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  LoginScreen({Key? key})
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
        appBar: _buildAppBar(),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 94.v),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFingerprint,
                          height: 80.adaptSize,
                          width: 80.adaptSize,
                          alignment: Alignment.center,
                        ),
                        SizedBox(height: 52.v),
                        Padding(
                          padding: EdgeInsets.only(left: 44.h),
                          child: Text(
                            "lbl_sign_in".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        Padding(
                          padding: EdgeInsets.only(left: 48.h),
                          child: Text(
                            "lbl_mobile".tr,
                            style: CustomTextStyles.titleMediumBluegray900,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 41.h,
                            right: 30.h,
                          ),
                          child: CustomTextFormField(
                            controller: controller.mobileNoController,
                            hintText: "lbl_0000000000".tr,
                            textInputType: TextInputType.phone,
                            alignment: Alignment.center,
                            validator: (value) {
                              if (!isValidPhone(value)) {
                                return "err_msg_please_enter_valid_phone_number"
                                    .tr;
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(height: 15.v),
                        Padding(
                          padding: EdgeInsets.only(left: 48.h),
                          child: Text(
                            "lbl_password".tr,
                            style: CustomTextStyles.titleMediumBluegray900,
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 41.h,
                            right: 30.h,
                          ),
                          child: Obx(
                            () => CustomTextFormField(
                              controller: controller.passwordController,
                              hintText: "lbl".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              alignment: Alignment.center,
                              suffix: InkWell(
                                onTap: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                    horizontal: 30.h,
                                    vertical: 21.v,
                                  ),
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
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "err_msg_please_enter_valid_password"
                                      .tr;
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
                        ),
                        SizedBox(height: 16.v),
                        Padding(
                          padding: EdgeInsets.only(left: 48.h),
                          child: InkWell(
                            onTap: () {
                              Get.offNamed(
                                AppRoutes.verifyotpScreen,
                              );
                            },
                            child: Text(
                              "msg_forgot_password".tr,
                              style: CustomTextStyles.bodyMediumBluegray900,
                            ),
                          ),
                        ),
                        SizedBox(height: 16.v),
                        CustomElevatedButton(
                          height: 50.v,
                          width: 250.h,
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.fillBlueGray,
                          buttonTextStyle: CustomTextStyles
                              .titleLargePoppinsOnErrorContainer,
                          alignment: Alignment.center,
                          onPressed: () {
                            Get.offNamed(
                              AppRoutes.homeContainer1Screen,
                            );
                          },
                        ),
                        SizedBox(height: 18.v),
                        _buildNewToMyLaundry(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: SizedBox(
        height: 120.v,
        width: 191.h,
        child: Stack(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup47,
              margin: EdgeInsets.only(right: 36.h),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(14.h, 19.v, 129.h, 82.v),
              child: Row(
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgVectorBlack90012x10,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      bottom: 2.v,
                    ),
                  ),
                  AppbarSubtitleOne(
                    text: "lbl_back".tr,
                    margin: EdgeInsets.only(left: 7.h),
                  ),
                ],
              ),
            ),
            AppbarTitle(
              text: "lbl_address".tr,
              margin: EdgeInsets.only(
                left: 125.h,
                top: 45.v,
                bottom: 54.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(15.h, 11.v, 15.h, 61.v),
          child: Column(
            children: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgQuestion,
                margin: EdgeInsets.symmetric(horizontal: 2.h),
              ),
              SizedBox(height: 5.v),
              AppbarSubtitle(
                text: "lbl_help".tr,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNewToMyLaundry() {
    return SizedBox(
      height: 252.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWaterTextureB207x360,
            height: 207.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: InkWell(
                onTap: () {
                  // Add your navigation action for Register here
                  Get.offNamed(
                    AppRoutes.registerScreen,
                  );
                },
                child: Text(
                  "msg_new_to_my_laundry".tr,
                  style: CustomTextStyles.bodyMedium14,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
