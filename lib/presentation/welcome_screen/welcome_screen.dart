import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/custom_button.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: getVerticalSize(788.00),
                          width: size.width,
                          margin: getMargin(bottom: 5),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        width: size.width,
                                        margin: getMargin(bottom: 29),
                                        padding: getPadding(
                                            left: 18,
                                            top: 58,
                                            right: 18,
                                            bottom: 58),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    ImageConstant.imgGroup11),
                                                fit: BoxFit.cover)),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 6),
                                                  child: Text(
                                                      "lbl_welcome_to".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular16)),
                                              Padding(
                                                  padding: getPadding(top: 4),
                                                  child: Text("lbl_slaaang".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsBold39)),
                                              Spacer(),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgHeroimg,
                                                  height:
                                                      getVerticalSize(256.00),
                                                  width: getHorizontalSize(
                                                      314.00)),
                                              Padding(
                                                  padding: getPadding(top: 94),
                                                  child: Text(
                                                      "msg_be_social_anonymously"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold11)),
                                              CustomButton(
                                                  height: 70,
                                                  width: 331,
                                                  text: "lbl_login".tr,
                                                  margin: getMargin(top: 11),
                                                  onTap: onTapLogin)
                                            ]))),
                                CustomButton(
                                    height: 70,
                                    width: 331,
                                    text: "lbl_register".tr,
                                    variant: ButtonVariant.OutlineGray900,
                                    fontStyle: ButtonFontStyle
                                        .UrbanistRomanSemiBold15Gray900,
                                    onTap: onTapRegister,
                                    alignment: Alignment.bottomCenter)
                              ]))
                    ]))));
  }

  onTapLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapRegister() {
    Get.toNamed(AppRoutes.signupScreen);
  }
}
