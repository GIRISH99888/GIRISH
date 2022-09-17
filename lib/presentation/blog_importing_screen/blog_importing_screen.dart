import 'controller/blog_importing_controller.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/widgets/custom_button.dart';

class BlogImportingScreen extends GetWidget<BlogImportingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 16, top: 12, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 12, top: 5, bottom: 4),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(5.54)),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgTime,
                                            height: getVerticalSize(11.00),
                                            width: getHorizontalSize(28.00)))),
                                Padding(
                                    padding: getPadding(top: 5, bottom: 4),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding:
                                                  getPadding(top: 1, bottom: 1),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgMobilesignal,
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width: getHorizontalSize(
                                                      17.00))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 5, bottom: 1),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgWifi,
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width: getHorizontalSize(
                                                      15.00))),
                                          Padding(
                                              padding: getPadding(left: 5),
                                              child: Container(
                                                  height:
                                                      getVerticalSize(11.00),
                                                  width:
                                                      getHorizontalSize(22.00),
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  3.00)),
                                                      child: LinearProgressIndicator(
                                                          value: 0.82,
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  ColorConstant
                                                                      .black900))))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 1, top: 3, bottom: 3),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgCombinedshape,
                                                  height: getVerticalSize(4.00),
                                                  width:
                                                      getHorizontalSize(1.00)))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 26, right: 16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 5, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(11.00)))),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("lbl_blog_importing".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold24
                                            .copyWith(height: 1.00))),
                                Padding(
                                    padding: getPadding(
                                        top: 4, right: 11, bottom: 6),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgMorevertical,
                                        height: getVerticalSize(16.00),
                                        width: getHorizontalSize(2.00)))
                              ])),
                      Container(
                          width: double.infinity,
                          margin: getMargin(left: 16, top: 35, right: 16),
                          decoration: AppDecoration.outlineBlueA70012.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(
                                        left: 120, top: 17, right: 120),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgDownload,
                                        height: getSize(20.00),
                                        width: getSize(20.00))),
                                Padding(
                                    padding: getPadding(
                                        left: 120, top: 21, right: 120),
                                    child: Text("msg_import_blogs_fr".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium18
                                            .copyWith(height: 1.00))),
                                Padding(
                                    padding: getPadding(
                                        left: 120,
                                        top: 15,
                                        right: 120,
                                        bottom: 15),
                                    child: CommonImageView(
                                        imagePath:
                                            ImageConstant.imgWordpresslogo,
                                        height: getSize(69.00),
                                        width: getSize(69.00)))
                              ])),
                      CustomButton(
                          width: 396,
                          text: "lbl_import".tr,
                          margin: getMargin(
                              left: 16, top: 499, right: 16, bottom: 20))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
