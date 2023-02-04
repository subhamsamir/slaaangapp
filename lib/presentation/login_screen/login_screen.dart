import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/core/utils/validation_functions.dart';
import 'package:shivam_s_application4/widgets/custom_button.dart';
import 'package:shivam_s_application4/widgets/custom_icon_button.dart';
import 'package:shivam_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Container(
                                      width: size.width,
                                      margin: getMargin(bottom: 5),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomIconButton(
                                                height: 41,
                                                width: 41,
                                                margin: getMargin(
                                                    left: 21, top: 41),
                                                onTap: () {
                                                  onTapBtnArrowleft();
                                                },
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft)),
                                            Container(
                                                height: getVerticalSize(973.00),
                                                width: size.width,
                                                margin: getMargin(top: 3),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgRectangle4,
                                                          height:
                                                              getVerticalSize(
                                                                  664.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  375.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      152.00)),
                                                          alignment: Alignment
                                                              .topCenter),
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle4,
                                                          height:
                                                              getVerticalSize(
                                                                  664.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  375.00),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      152.00)),
                                                          alignment: Alignment
                                                              .topCenter,
                                                          margin: getMargin(
                                                              top: 59)),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      866.00),
                                                              width: size.width,
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgRectangle2,
                                                                        height: getVerticalSize(
                                                                            620.00),
                                                                        width: getHorizontalSize(
                                                                            375.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            152.00)),
                                                                        alignment:
                                                                            Alignment.topCenter),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.topCenter,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 22, top: 97, right: 22),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              CustomTextFormField(
                                                                                  width: 331,
                                                                                  focusNode: FocusNode(),
                                                                                  controller: controller.enteryouremailController,
                                                                                  hintText: "msg_enter_your_email".tr,
                                                                                  padding: TextFormFieldPadding.PaddingT17,
                                                                                  textInputType: TextInputType.emailAddress,
                                                                                  validator: (value) {
                                                                                    if (value == null || (!isValidEmail(value, isRequired: true))) {
                                                                                      return "Please enter valid email";
                                                                                    }
                                                                                    return null;
                                                                                  }),
                                                                              Obx(() => CustomTextFormField(
                                                                                  width: 331,
                                                                                  focusNode: FocusNode(),
                                                                                  controller: controller.enteryourpasswordController,
                                                                                  hintText: "msg_enter_your_password".tr,
                                                                                  margin: getMargin(top: 15),
                                                                                  variant: TextFormFieldVariant.OutlineIndigo50_1,
                                                                                  padding: TextFormFieldPadding.PaddingT17_1,
                                                                                  textInputAction: TextInputAction.done,
                                                                                  textInputType: TextInputType.visiblePassword,
                                                                                  suffix: InkWell(
                                                                                      onTap: () {
                                                                                        controller.isShowPassword.value = !controller.isShowPassword.value;
                                                                                      },
                                                                                      child: Container(margin: getMargin(left: 12, top: 17, right: 16, bottom: 17), child: CustomImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgSignal : ImageConstant.imgSignal))),
                                                                                  suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56.00)),
                                                                                  validator: (value) {
                                                                                    if (value == null || (!isValidPassword(value, isRequired: true))) {
                                                                                      return "Please enter valid password";
                                                                                    }
                                                                                    return null;
                                                                                  },
                                                                                  isObscureText: !controller.isShowPassword.value)),
                                                                              Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(top: 16), child: Text("msg_forgot_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanSemiBold14))),
                                                                              CustomButton(height: 56, width: 331, text: "lbl_login".tr, margin: getMargin(top: 29), padding: ButtonPadding.PaddingAll17, onTap: onTapLogin),
                                                                              GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapTxtDonthaveanaccount();
                                                                                  },
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 204),
                                                                                      child: RichText(
                                                                                          text: TextSpan(children: [
                                                                                            TextSpan(text: "msg_don_t_have_an_account2".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(15), fontFamily: 'Urbanist', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.15))),
                                                                                            TextSpan(text: "lbl_register_now".tr, style: TextStyle(color: ColorConstant.cyan400, fontSize: getFontSize(15), fontFamily: 'Urbanist', fontWeight: FontWeight.w700, letterSpacing: getHorizontalSize(0.15)))
                                                                                          ]),
                                                                                          textAlign: TextAlign.left)))
                                                                            ])))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 22,
                                                                      top: 42),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                3),
                                                                        child: Text(
                                                                            "lbl_login"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsBold25)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            272.00),
                                                                        margin: getMargin(
                                                                            top:
                                                                                14),
                                                                        child: Text(
                                                                            "msg_welcome_back_glad"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtUrbanistRomanBold30))
                                                                  ])))
                                                    ]))
                                          ]))))
                        ])))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.receivedMesssagesScreen);
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
