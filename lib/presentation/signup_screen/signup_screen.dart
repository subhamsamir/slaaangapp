import 'controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/core/utils/validation_functions.dart';
import 'package:shivam_s_application4/widgets/custom_button.dart';
import 'package:shivam_s_application4/widgets/custom_icon_button.dart';
import 'package:shivam_s_application4/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignupScreen extends GetWidget<SignupController> {
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
                                                                          .bottomCenter,
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
                                                                            Alignment.bottomCenter,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 16, right: 28, bottom: 272),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              CustomButton(height: 56, width: 331, text: "lbl_register".tr, padding: ButtonPadding.PaddingAll17),
                                                                              GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapTxtAlreadyhavean();
                                                                                  },
                                                                                  child: Padding(
                                                                                      padding: getPadding(top: 19),
                                                                                      child: RichText(
                                                                                          text: TextSpan(children: [
                                                                                            TextSpan(text: "msg_already_have_an2".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(15), fontFamily: 'Urbanist', fontWeight: FontWeight.w500, letterSpacing: getHorizontalSize(0.15))),
                                                                                            TextSpan(text: "lbl_login_now".tr, style: TextStyle(color: ColorConstant.cyan400, fontSize: getFontSize(15), fontFamily: 'Urbanist', fontWeight: FontWeight.w700, letterSpacing: getHorizontalSize(0.15)))
                                                                                          ]),
                                                                                          textAlign: TextAlign.left))),
                                                                              Padding(
                                                                                  padding: getPadding(top: 85),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    Padding(padding: getPadding(top: 1), child: Text("msg_by_continuing_you".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanRegular12)),
                                                                                    Padding(padding: getPadding(left: 2, bottom: 1), child: Text("lbl_terms_of_use".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold12.copyWith(decoration: TextDecoration.underline)))
                                                                                  ])),
                                                                              Padding(
                                                                                  padding: getPadding(top: 4),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    Text("msg_and_have_read_and".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanRegular12),
                                                                                    Padding(padding: getPadding(left: 7), child: Text("lbl_privacy_policy".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold12.copyWith(decoration: TextDecoration.underline)))
                                                                                  ]))
                                                                            ])))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 41,
                                                                      right:
                                                                          28),
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
                                                                                6),
                                                                        child: Text(
                                                                            "lbl_sign_up"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsBold25)),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            272.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                7,
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "msg_hello_register"
                                                                                .tr,
                                                                            maxLines:
                                                                                null,
                                                                            textAlign:
                                                                                TextAlign.left,
                                                                            style: AppStyle.txtUrbanistRomanBold30)),
                                                                    CustomTextFormField(
                                                                        width:
                                                                            331,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        controller:
                                                                            controller
                                                                                .emailInputController,
                                                                        hintText:
                                                                            "lbl_email"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            top:
                                                                                44),
                                                                        textInputType:
                                                                            TextInputType
                                                                                .emailAddress,
                                                                        validator:
                                                                            (value) {
                                                                          if (value == null ||
                                                                              (!isValidEmail(value, isRequired: true))) {
                                                                            return "Please enter valid email";
                                                                          }
                                                                          return null;
                                                                        }),
                                                                    CustomTextFormField(
                                                                        width:
                                                                            331,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        controller:
                                                                            controller
                                                                                .usernameInputController,
                                                                        hintText:
                                                                            "lbl_fullname"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            top:
                                                                                12),
                                                                        validator:
                                                                            (value) {
                                                                          if (!isText(
                                                                              value)) {
                                                                            return "Please enter valid text";
                                                                          }
                                                                          return null;
                                                                        }),
                                                                    CustomTextFormField(
                                                                        width:
                                                                            331,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        controller:
                                                                            controller
                                                                                .passwordInputController,
                                                                        hintText:
                                                                            "lbl_password"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            top:
                                                                                8),
                                                                        variant:
                                                                            TextFormFieldVariant
                                                                                .OutlineIndigo50_1,
                                                                        textInputType:
                                                                            TextInputType
                                                                                .visiblePassword,
                                                                        validator:
                                                                            (value) {
                                                                          if (value == null ||
                                                                              (!isValidPassword(value, isRequired: true))) {
                                                                            return "Please enter valid password";
                                                                          }
                                                                          return null;
                                                                        },
                                                                        isObscureText:
                                                                            true),
                                                                    CustomTextFormField(
                                                                        width:
                                                                            331,
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        controller:
                                                                            controller
                                                                                .confirmpasswordOneController,
                                                                        hintText:
                                                                            "msg_confirm_password"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            top:
                                                                                12),
                                                                        variant:
                                                                            TextFormFieldVariant
                                                                                .OutlineIndigo50_1,
                                                                        textInputAction:
                                                                            TextInputAction
                                                                                .done,
                                                                        textInputType:
                                                                            TextInputType
                                                                                .visiblePassword,
                                                                        validator:
                                                                            (value) {
                                                                          if (value == null ||
                                                                              (!isValidPassword(value, isRequired: true))) {
                                                                            return "Please enter valid password";
                                                                          }
                                                                          return null;
                                                                        },
                                                                        isObscureText:
                                                                            true)
                                                                  ])))
                                                    ]))
                                          ]))))
                        ])))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(AppRoutes.loginScreen);
  }
}
