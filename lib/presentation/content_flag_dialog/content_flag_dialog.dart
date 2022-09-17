import 'controller/content_flag_controller.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ContentFlagDialog extends StatelessWidget {
  ContentFlagDialog(this.controller);

  ContentFlagController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: getHorizontalSize(
              218.00,
            ),
            margin: getMargin(
              left: 24,
              top: 30,
              right: 24,
            ),
            child: Text(
              "msg_choose_reason_f".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtGilroySemiBold16Bluegray900.copyWith(
                height: 1.63,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 30,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      "lbl_it_is_spam".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium16Bluegray700.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  CustomIconButton(
                    height: 20,
                    width: 20,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgCheckmark,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 30,
                right: 24,
                bottom: 27,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 2,
                      bottom: 1,
                    ),
                    child: Text(
                      "msg_it_is_inappropr".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium16Bluegray700.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  Container(
                    height: getSize(
                      20.00,
                    ),
                    width: getSize(
                      20.00,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          2.50,
                        ),
                      ),
                      border: Border.all(
                        color: ColorConstant.bluegray50,
                        width: getHorizontalSize(
                          0.83,
                        ),
                      ),
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
