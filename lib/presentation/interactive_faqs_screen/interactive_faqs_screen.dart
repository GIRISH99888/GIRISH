import 'controller/interactive_faqs_controller.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/widgets/custom_button.dart';
import 'package:itr/widgets/custom_drop_down.dart';

class InteractiveFaqsScreen extends GetWidget<InteractiveFaqsController> {
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
                          padding: getPadding(left: 22, top: 27, right: 22),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 5, bottom: 6),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(12.00),
                                            width: getHorizontalSize(11.00)))),
                                Padding(
                                    padding: getPadding(left: 89),
                                    child: Text("msg_interactive_faq".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroySemiBold24
                                            .copyWith(height: 1.00)))
                              ])),
                      Padding(
                          padding: getPadding(left: 16, top: 41, right: 16),
                          child: Text("lbl_select_category".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16Bluegray800
                                  .copyWith(height: 1.00))),
                      CustomDropDown(
                          width: 396,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 22),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgArrowdownBluegray400)),
                          hintText: "lbl_select_one".tr,
                          margin: getMargin(left: 16, top: 7, right: 16),
                          alignment: Alignment.center,
                          items: controller
                              .interactiveFaqsModelObj.value.dropdownItemList,
                          onChanged: (value) {
                            controller.onSelected(value);
                          }),
                      CustomDropDown(
                          width: 396,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 22),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgArrowdownBluegray400)),
                          hintText: "msg_where_do_you_de".tr,
                          margin: getMargin(left: 16, top: 24, right: 16),
                          alignment: Alignment.center,
                          items: controller
                              .interactiveFaqsModelObj.value.dropdownItemList1,
                          onChanged: (value) {
                            controller.onSelected1(value);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 16, top: 24, right: 16),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder5),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomDropDown(
                                        width: 361,
                                        focusNode: FocusNode(),
                                        icon: Container(
                                            margin: getMargin(left: 30),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowdownBluegray400)),
                                        hintText: "msg_how_can_i_order".tr,
                                        margin: getMargin(
                                            left: 12, top: 14, right: 12),
                                        fontStyle: DropDownFontStyle
                                            .GilroyMedium16Bluegray900,
                                        items: controller
                                            .interactiveFaqsModelObj
                                            .value
                                            .dropdownItemList2,
                                        onChanged: (value) {
                                          controller.onSelected2(value);
                                        }),
                                    Container(
                                        width: getHorizontalSize(372.00),
                                        margin: getMargin(
                                            left: 12,
                                            top: 29,
                                            right: 12,
                                            bottom: 11),
                                        child: Text("msg_placing_an_orde".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtGilroyRegular14
                                                .copyWith(height: 1.57)))
                                  ]))),
                      CustomDropDown(
                          width: 396,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 22),
                              child: CommonImageView(
                                  svgPath:
                                      ImageConstant.imgArrowdownBluegray400)),
                          hintText: "msg_what_is_minimum".tr,
                          margin: getMargin(left: 16, top: 16, right: 16),
                          alignment: Alignment.center,
                          items: controller
                              .interactiveFaqsModelObj.value.dropdownItemList3,
                          onChanged: (value) {
                            controller.onSelected3(value);
                          }),
                      Padding(
                          padding: getPadding(left: 16, top: 37, right: 16),
                          child: Text("msg_not_listed_your".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold20
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 16, top: 13, right: 16),
                              decoration: AppDecoration.outlineBluegray100
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 8, top: 13, right: 10),
                                            child: Text(
                                                "msg_write_your_ques".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroyMedium16Bluegray400
                                                    .copyWith(height: 1.00)))),
                                    Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 373,
                                                top: 67,
                                                right: 7,
                                                bottom: 7),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup216,
                                                height: getSize(16.00),
                                                width: getSize(16.00))))
                                  ]))),
                      CustomButton(
                          width: 396,
                          text: "lbl_submit".tr,
                          margin: getMargin(
                              left: 16, top: 29, right: 16, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
