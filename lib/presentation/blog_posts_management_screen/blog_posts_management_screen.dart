import 'controller/blog_posts_management_controller.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/widgets/custom_button.dart';
import 'package:itr/widgets/custom_icon_button.dart';

class BlogPostsManagementScreen
    extends GetWidget<BlogPostsManagementController> {
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
                          margin: getMargin(left: 15, top: 12, right: 14),
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
                          padding: getPadding(left: 15, top: 26, right: 15),
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
                                        padding: getPadding(top: 6, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(11.00)))),
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("msg_blog_posts_mana".tr,
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
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 15, top: 35),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    decoration: AppDecoration.fillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 17,
                                                      right: 12),
                                                  child: Text(
                                                      "lbl_blogs_uploaded".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroySemiBold16
                                                          .copyWith(
                                                              height: 1.00)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 18,
                                                  right: 12,
                                                  bottom: 28),
                                              child: Text("lbl_87".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold24BlueA700
                                                      .copyWith(height: 1.00)))
                                        ])),
                                Container(
                                    margin: getMargin(left: 16),
                                    decoration: AppDecoration.fillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 16,
                                                      right: 12),
                                                  child: Text(
                                                      "lbl_total_clicks".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroySemiBold16
                                                          .copyWith(
                                                              height: 1.00)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 20,
                                                  right: 12,
                                                  bottom: 28),
                                              child: Text("lbl_3_5k".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtGilroySemiBold24BlueA700
                                                      .copyWith(height: 1.00)))
                                        ])),
                                Container(
                                    margin: getMargin(left: 16),
                                    decoration: AppDecoration.fillBlue50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder5),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 17,
                                                      right: 12),
                                                  child: Text(
                                                      "lbl_total_earnings".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroySemiBold16
                                                          .copyWith(
                                                              height: 1.00)))),
                                          Padding(
                                              padding: getPadding(
                                                  left: 12,
                                                  top: 18,
                                                  right: 12,
                                                  bottom: 28),
                                              child: Text("lbl_110".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: AppStyle
                                                      .txtGilroySemiBold24BlueA700
                                                      .copyWith(height: 1.00)))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(50.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(left: 15, top: 24, right: 15),
                          decoration: AppDecoration.fillGray100,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: getMargin(top: 1, bottom: 10),
                                    decoration: AppDecoration.fillWhiteA700,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(
                                                  left: 10, top: 8, bottom: 8),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack901,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    4.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 17,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack902,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    2.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 17, top: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgMicrophone,
                                                            height:
                                                                getVerticalSize(
                                                                    7.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    6.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 14,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack904,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    7.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack905,
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack905,
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMenu,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTrash,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    7.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 23,
                                                            top: 1,
                                                            bottom: 2),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack909,
                                                            height:
                                                                getVerticalSize(
                                                                    4.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgComputer,
                                                            height:
                                                                getVerticalSize(
                                                                    7.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 12,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgUser,
                                                            height:
                                                                getSize(8.00),
                                                            width:
                                                                getSize(8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgPlus,
                                                            height:
                                                                getVerticalSize(
                                                                    6.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00)))
                                                  ])),
                                          Padding(
                                              padding: getPadding(
                                                  left: 64,
                                                  top: 9,
                                                  right: 11,
                                                  bottom: 9),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 1, bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack913,
                                                            height:
                                                                getVerticalSize(
                                                                    3.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13,
                                                            top: 1,
                                                            bottom: 1),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack913,
                                                            height:
                                                                getVerticalSize(
                                                                    3.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    8.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgVectorBlack915,
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    1.00)))
                                                  ]))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    margin: getMargin(
                                        top: 10, right: 10, bottom: 1),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomIconButton(
                                              height: 21,
                                              width: 21,
                                              margin: getMargin(
                                                  left: 65, right: 65),
                                              variant:
                                                  IconButtonVariant.FillGray100,
                                              shape: IconButtonShape
                                                  .CustomBorderTL3,
                                              alignment: Alignment.centerLeft,
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVectorBlack904)),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  decoration:
                                                      AppDecoration.fillGray100,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8,
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgRefresh,
                                                                height:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        8.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10,
                                                                bottom: 8),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClose,
                                                                height:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        7.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 8,
                                                                bottom: 10),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClose,
                                                                height:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        8.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVectorBlack920,
                                                                height:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        5.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 11),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon,
                                                                height:
                                                                    getVerticalSize(
                                                                        2.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        3.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMap,
                                                                height:
                                                                    getVerticalSize(
                                                                        6.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        9.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 11),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon,
                                                                height:
                                                                    getVerticalSize(
                                                                        2.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        3.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgEdit,
                                                                height: getSize(
                                                                    6.00),
                                                                width: getSize(
                                                                    6.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 7),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFile,
                                                                height: getSize(
                                                                    8.00),
                                                                width: getSize(
                                                                    8.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 11),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon,
                                                                height:
                                                                    getVerticalSize(
                                                                        2.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        3.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                bottom: 7),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVectorBlack927,
                                                                height:
                                                                    getVerticalSize(
                                                                        8.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        7.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11,
                                                                bottom: 11),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgPolygon,
                                                                height:
                                                                    getVerticalSize(
                                                                        2.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        3.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9,
                                                                right: 9,
                                                                bottom: 9),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgMinimize,
                                                                height: getSize(
                                                                    6.00),
                                                                width: getSize(
                                                                    6.00)))
                                                      ])))
                                        ])))
                          ])),
                      Container(
                          height: getVerticalSize(301.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(left: 15, top: 24, right: 15),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(left: 10, bottom: 10),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(4.00)),
                                        child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle19,
                                            height: getVerticalSize(101.00),
                                            width:
                                                getHorizontalSize(118.00))))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    width: getHorizontalSize(256.00),
                                    margin: getMargin(
                                        top: 7, right: 10, bottom: 10),
                                    child: Text("msg_battlegrounds_m".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroySemiBold18Bluegray900
                                            .copyWith(height: 1.61)))),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: getHorizontalSize(388.00),
                                    margin:
                                        getMargin(left: 2, top: 10, right: 5),
                                    child: Text("msg_krafton_has_bee".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtGilroyMedium14Bluegray40090
                                            .copyWith(height: 1.57))))
                          ])),
                      CustomButton(
                          width: 396,
                          text: "lbl_save_changes".tr,
                          margin: getMargin(
                              left: 15, top: 188, right: 15, bottom: 20))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
