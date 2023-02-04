import '../received_messsages_screen/widgets/listmalenatudi_item_widget.dart';
import 'controller/received_messsages_controller.dart';
import 'models/listmalenatudi_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shivam_s_application4/core/app_export.dart';
import 'package:shivam_s_application4/widgets/custom_button.dart';
import 'package:shivam_s_application4/widgets/custom_icon_button.dart';
import 'package:shivam_s_application4/widgets/custom_search_view.dart';

class ReceivedMesssagesScreen extends GetWidget<ReceivedMesssagesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: Container(
                              height: getVerticalSize(1008.00),
                              width: size.width,
                              margin: getMargin(top: 49),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle4,
                                        height: getVerticalSize(664.00),
                                        width: getHorizontalSize(375.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(152.00)),
                                        alignment: Alignment.topCenter,
                                        margin: getMargin(top: 35)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle4,
                                        height: getVerticalSize(664.00),
                                        width: getHorizontalSize(375.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(152.00)),
                                        alignment: Alignment.topCenter,
                                        margin: getMargin(top: 94)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            height: getVerticalSize(866.00),
                                            width: size.width,
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle2,
                                                      height: getVerticalSize(
                                                          620.00),
                                                      width: getHorizontalSize(
                                                          375.00),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  152.00)),
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 25,
                                                              top: 164,
                                                              right: 22,
                                                              bottom: 121),
                                                          child: Obx(() => ListView
                                                              .separated(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            getVerticalSize(16.00));
                                                                  },
                                                                  itemCount: controller
                                                                      .receivedMesssagesModelObj
                                                                      .value
                                                                      .listmalenatudiItemList
                                                                      .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    ListmalenatudiItemModel
                                                                        model =
                                                                        controller
                                                                            .receivedMesssagesModelObj
                                                                            .value
                                                                            .listmalenatudiItemList[index];
                                                                    return ListmalenatudiItemWidget(
                                                                        model);
                                                                  })))),
                                                  CustomSearchView(
                                                      width: 288,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .searchbarController,
                                                      hintText:
                                                          "msg_search_for_contacts"
                                                              .tr,
                                                      margin:
                                                          getMargin(top: 86),
                                                      alignment:
                                                          Alignment.topCenter,
                                                      prefix: Container(
                                                          margin: getMargin(
                                                              left: 20,
                                                              top: 15,
                                                              right: 18,
                                                              bottom: 14),
                                                          child: CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch)),
                                                      prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                                  getVerticalSize(
                                                                      48.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child:
                                                          SingleChildScrollView(
                                                              scrollDirection:
                                                                  Axis
                                                                      .horizontal,
                                                              padding:
                                                                  getPadding(
                                                                      left: 24,
                                                                      bottom:
                                                                          810),
                                                              child:
                                                                  IntrinsicWidth(
                                                                      child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                    CustomIconButton(
                                                                        height:
                                                                            56,
                                                                        width:
                                                                            56,
                                                                        variant:
                                                                            IconButtonVariant
                                                                                .OutlineDeeporange10084,
                                                                        shape: IconButtonShape
                                                                            .CircleBorder28,
                                                                        padding:
                                                                            IconButtonPadding
                                                                                .PaddingAll19,
                                                                        child: CustomImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgPlus)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse4,
                                                                        height: getSize(
                                                                            56.00),
                                                                        width: getSize(
                                                                            56.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            28.00)),
                                                                        margin: getMargin(
                                                                            left:
                                                                                30)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse5,
                                                                        height: getSize(
                                                                            56.00),
                                                                        width: getSize(
                                                                            56.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            28.00)),
                                                                        margin: getMargin(
                                                                            left:
                                                                                30)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse6,
                                                                        height: getSize(
                                                                            56.00),
                                                                        width: getSize(
                                                                            56.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            28.00)),
                                                                        margin: getMargin(
                                                                            left:
                                                                                30)),
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgEllipse7,
                                                                        height: getSize(
                                                                            56.00),
                                                                        width: getSize(
                                                                            56.00),
                                                                        radius: BorderRadius.circular(getHorizontalSize(
                                                                            28.00)),
                                                                        margin: getMargin(
                                                                            left:
                                                                                30))
                                                                  ]))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: getMargin(
                                                left: 12,
                                                top: 66,
                                                right: 7,
                                                bottom: 886),
                                            padding: getPadding(all: 6),
                                            decoration: AppDecoration
                                                .fillGray20036
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder15),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  CustomButton(
                                                      height: 44,
                                                      width: 172,
                                                      text: "lbl_received".tr,
                                                      variant: ButtonVariant
                                                          .OutlineBlack9003f,
                                                      shape: ButtonShape
                                                          .RoundedBorder15,
                                                      padding: ButtonPadding
                                                          .PaddingAll12,
                                                      fontStyle: ButtonFontStyle
                                                          .InterSemiBold14),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtSent();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 14,
                                                              right: 70,
                                                              bottom: 12),
                                                          child: Text(
                                                              "lbl_sent".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtInterSemiBold14)))
                                                ]))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMenu,
                                        height: getSize(24.00),
                                        width: getSize(24.00),
                                        alignment: Alignment.topRight,
                                        margin: getMargin(right: 40)),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 25, top: 27),
                                            child: Text("lbl_messages".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsBold25))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 25, top: 5),
                                            child: Text("lbl_slaaang".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtPoppinsBold16)))
                                  ]))))
                ]))));
  }

  onTapTxtSent() {
    Get.toNamed(AppRoutes.welcomeScreen);
  }
}
