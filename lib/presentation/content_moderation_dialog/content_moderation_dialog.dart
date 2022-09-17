import 'controller/content_moderation_controller.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ContentModerationDialog extends StatelessWidget {
  ContentModerationDialog(this.controller);

  ContentModerationController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: getPadding(left: 24, top: 31, right: 24),
                  child: Text("msg_why_are_you_fla".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold18Bluegray900
                          .copyWith(height: 1.00))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(left: 24, top: 28, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 4, bottom: 3),
                                child: Text("lbl_off_topic".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16Bluegray700
                                        .copyWith(height: 1.00))),
                            Container(
                                decoration: AppDecoration.fillBlueA700.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          height: getSize(12.00),
                                          width: getSize(12.00),
                                          margin: getMargin(all: 6),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.whiteA700,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(6.00))))
                                    ]))
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(left: 24, top: 27, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 4, bottom: 3),
                                child: Text("lbl_inappropriate".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16Bluegray700
                                        .copyWith(height: 1.00))),
                            Container(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    border: Border.all(
                                        color: ColorConstant.bluegray200,
                                        width: getHorizontalSize(1.00))))
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(left: 24, top: 27, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 4, bottom: 3),
                                child: Text("lbl_spam".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16Bluegray700
                                        .copyWith(height: 1.00))),
                            Container(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    border: Border.all(
                                        color: ColorConstant.bluegray200,
                                        width: getHorizontalSize(1.00))))
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: getPadding(left: 24, top: 27, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding: getPadding(top: 4, bottom: 3),
                                child: Text("msg_notify_space_ad".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16Bluegray700
                                        .copyWith(height: 1.00))),
                            Container(
                                height: getSize(24.00),
                                width: getSize(24.00),
                                decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(12.00)),
                                    border: Border.all(
                                        color: ColorConstant.bluegray200,
                                        width: getHorizontalSize(1.00))))
                          ]))),
              Padding(
                  padding: getPadding(left: 24, top: 29, right: 24),
                  child: Text("lbl_comments".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroyMedium16Bluegray700
                          .copyWith(height: 1.00))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      width: double.infinity,
                      margin: getMargin(left: 24, top: 13, right: 24),
                      decoration: AppDecoration.outlineBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: getHorizontalSize(207.00),
                                    margin:
                                        getMargin(left: 16, top: 13, right: 16),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(7.00))),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                  "msg_say_something_a".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroyMedium14Bluegray400
                                                      .copyWith(height: 1.00)))
                                        ]))),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 275,
                                        top: 37,
                                        right: 7,
                                        bottom: 7),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgGroup216,
                                        height: getSize(16.00),
                                        width: getSize(16.00))))
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding:
                          getPadding(left: 24, top: 30, right: 24, bottom: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomButton(
                                width: 144,
                                text: "lbl_cancel".tr,
                                variant: ButtonVariant.OutlineBlueA700,
                                fontStyle:
                                    ButtonFontStyle.GilroyMedium16BlueA700,
                                onTap: onTapBtnCancel),
                            CustomButton(
                                width: 144,
                                text: "lbl_submit".tr,
                                margin: getMargin(left: 10))
                          ])))
            ]));
  }

  onTapBtnCancel() {
    Get.back();
  }
}
