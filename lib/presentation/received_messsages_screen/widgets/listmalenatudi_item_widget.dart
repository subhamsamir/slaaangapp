import '../controller/received_messsages_controller.dart';
import '../models/listmalenatudi_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shivam_s_application4/core/app_export.dart';

// ignore: must_be_immutable
class ListmalenatudiItemWidget extends StatelessWidget {
  ListmalenatudiItemWidget(this.listmalenatudiItemModelObj);

  ListmalenatudiItemModel listmalenatudiItemModelObj;

  var controller = Get.find<ReceivedMesssagesController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          103.00,
        ),
        width: getHorizontalSize(
          328.00,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  left: 95,
                  top: 15,
                  right: 95,
                  bottom: 15,
                ),
                decoration: AppDecoration.fillWhiteA70099.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder33,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_malena_tudi".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular128,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 9,
                        bottom: 23,
                      ),
                      child: Text(
                        "msg_hey_how_s_it_goin".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsRegular128Gray700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder33,
                ),
                child: Container(
                  height: getVerticalSize(
                    95.00,
                  ),
                  width: getHorizontalSize(
                    96.00,
                  ),
                  padding: getPadding(
                    left: 17,
                    top: 16,
                    right: 17,
                    bottom: 16,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                    image: DecorationImage(
                      image: fs.Svg(
                        ImageConstant.imgGroup9,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle1,
                        height: getVerticalSize(
                          62.00,
                        ),
                        width: getHorizontalSize(
                          61.00,
                        ),
                        radius: BorderRadius.circular(
                          getHorizontalSize(
                            30.00,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
