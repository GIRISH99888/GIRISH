import '../manage_blog_comments_screen/widgets/listprofileimglarg_item_widget.dart';
import 'controller/manage_blog_comments_controller.dart';
import 'models/listprofileimglarg_item_model.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/widgets/custom_button.dart';
import 'package:itr/widgets/custom_switch.dart';
import 'package:itr/widgets/custom_text_form_field.dart';

class ManageBlogCommentsScreen extends GetWidget<ManageBlogCommentsController> {
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 16, top: 12, right: 14),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 5, bottom: 4),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(5.54)),
                                            child: CommonImageView(
                                                svgPath: ImageConstant.imgTime,
                                                height: getVerticalSize(11.00),
                                                width:
                                                    getHorizontalSize(28.00)))),
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 4),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgMobilesignal,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          17.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgWifi,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          15.00))),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          11.00),
                                                      width: getHorizontalSize(
                                                          22.00),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      3.00)),
                                                          child: LinearProgressIndicator(
                                                              value: 0.82,
                                                              valueColor: AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  ColorConstant
                                                                      .black900))))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 3,
                                                      bottom: 3),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgCombinedshape,
                                                      height:
                                                          getVerticalSize(4.00),
                                                      width: getHorizontalSize(
                                                          1.00)))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 22, top: 29, right: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 3, bottom: 8),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getSize(12.00),
                                            width: getSize(12.00)))),
                                Padding(
                                    padding: getPadding(left: 43),
                                    child: Text("msg_manage_blog_com".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold24
                                            .copyWith(height: 1.00)))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: getMargin(left: 16, top: 34, right: 16),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                              margin: getMargin(top: 7),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                256.00),
                                                        margin:
                                                            getMargin(right: 1),
                                                        child: Text(
                                                            "msg_battlegrounds_m"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroySemiBold18Bluegray900
                                                                .copyWith(
                                                                    height:
                                                                        1.61))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                255.00),
                                                        margin: getMargin(
                                                            left: 2, top: 18),
                                                        child: Text(
                                                            "msg_the_reason_behi"
                                                                .tr,
                                                            maxLines: null,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtGilroyRegular14
                                                                .copyWith(
                                                                    height:
                                                                        1.57)))
                                                  ])),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              4.00)),
                                                  child: CommonImageView(
                                                      imagePath:
                                                          ImageConstant
                                                              .imgRectangle19,
                                                      height: getVerticalSize(
                                                          101.00),
                                                      width: getHorizontalSize(
                                                          118.00))))
                                        ]),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 1, top: 20, bottom: 2),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text(
                                                          "lbl_15_mins_ago".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtGilroyRegular14
                                                              .copyWith(
                                                                  height:
                                                                      1.00))),
                                                  Padding(
                                                      padding:
                                                          getPadding(bottom: 1),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgGroup9848,
                                                          height:
                                                              getVerticalSize(
                                                                  13.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  10.00)))
                                                ])))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 24, right: 16),
                              child: Obx(() => ListView.separated(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return Container(
                                        height: getVerticalSize(1.00),
                                        width: getHorizontalSize(396.00),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.bluegray100));
                                  },
                                  itemCount: controller
                                      .manageBlogCommentsModelObj
                                      .value
                                      .listprofileimglargItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListprofileimglargItemModel model =
                                        controller
                                            .manageBlogCommentsModelObj
                                            .value
                                            .listprofileimglargItemList[index];
                                    return ListprofileimglargItemWidget(model);
                                  })))),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(396.00),
                          margin: getMargin(left: 16, top: 16, right: 16),
                          decoration:
                              BoxDecoration(color: ColorConstant.bluegray100)),
                      CustomTextFormField(
                          width: 396,
                          focusNode: FocusNode(),
                          controller: controller.group9887Controller,
                          hintText: "msg_comment_setting".tr,
                          margin: getMargin(left: 16, top: 24, right: 16),
                          variant: TextFormFieldVariant.FillBlue51,
                          padding: TextFormFieldPadding.PaddingT12,
                          fontStyle:
                              TextFormFieldFontStyle.GilroyMedium16BlueA700,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 26, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3, bottom: 3),
                                        child: Text("lbl_allow_comments".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroySemiBold18Bluegray900
                                                .copyWith(height: 1.00))),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch.value,
                                        onChanged: (value) {
                                          controller.isSelectedSwitch.value =
                                              value;
                                        }))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 28, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 5, bottom: 1),
                                        child: Text("msg_turn_off_spam_c".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroySemiBold18Bluegray900
                                                .copyWith(height: 1.00))),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch1.value,
                                        onChanged: (value) {
                                          controller.isSelectedSwitch1.value =
                                              value;
                                        }))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 16, top: 28, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 3, bottom: 3),
                                        child: Text("msg_comment_notific".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtGilroySemiBold18Bluegray900
                                                .copyWith(height: 1.00))),
                                    Obx(() => CustomSwitch(
                                        value:
                                            controller.isSelectedSwitch2.value,
                                        onChanged: (value) {
                                          controller.isSelectedSwitch2.value =
                                              value;
                                        }))
                                  ]))),
                      CustomButton(
                          width: 396,
                          text: "lbl_save_changes".tr,
                          margin: getMargin(
                              left: 16, top: 96, right: 16, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
