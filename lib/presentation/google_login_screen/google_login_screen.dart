import 'controller/google_login_controller.dart';
import 'package:flutter/material.dart';
import 'package:itr/core/app_export.dart';
import 'package:itr/core/utils/validation_functions.dart';
import 'package:itr/widgets/custom_button.dart';
import 'package:itr/widgets/custom_checkbox.dart';
import 'package:itr/widgets/custom_text_form_field.dart';
import 'package:itr/domain/googleauth/google_auth_helper.dart';
import 'package:itr/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class GoogleLoginScreen extends GetWidget<GoogleLoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                      margin: getMargin(
                                          left: 16, top: 12, right: 14),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 12,
                                                    top: 5,
                                                    bottom: 4),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                5.54)),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgTime,
                                                        height: getVerticalSize(
                                                            11.00),
                                                        width:
                                                            getHorizontalSize(
                                                                28.00)))),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 4),
                                                child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 1,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgMobilesignal,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      17.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5,
                                                              bottom: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgWifi,
                                                              height:
                                                                  getVerticalSize(
                                                                      10.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      15.00))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 5),
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      11.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      22.00),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              3.00)),
                                                                  child: LinearProgressIndicator(
                                                                      value:
                                                                          0.82,
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<Color>(
                                                                              ColorConstant.black900))))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 3,
                                                              bottom: 3),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCombinedshape,
                                                              height:
                                                                  getVerticalSize(
                                                                      4.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      1.00)))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 22, top: 29, right: 22),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapImgArrowleft();
                                            },
                                            child: Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 7),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft,
                                                    height:
                                                        getVerticalSize(12.00),
                                                    width: getHorizontalSize(
                                                        11.00)))),
                                        Padding(
                                            padding: getPadding(left: 150),
                                            child: Text("lbl_login".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroySemiBold24
                                                    .copyWith(height: 1.00)))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 39, right: 16),
                                  child: Text("lbl_email".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium16
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller: controller.inputFieldController,
                                  hintText: "msg_enter_your_emai".tr,
                                  margin:
                                      getMargin(left: 16, top: 8, right: 16),
                                  alignment: Alignment.center,
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidEmail(value,
                                            isRequired: true))) {
                                      return "Please enter valid email";
                                    }
                                    return null;
                                  }),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 20, right: 16),
                                  child: Text("lbl_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium16
                                          .copyWith(height: 1.00))),
                              CustomTextFormField(
                                  width: 396,
                                  focusNode: FocusNode(),
                                  controller:
                                      controller.inputFieldOneController,
                                  hintText: "lbl_enter_password".tr,
                                  margin:
                                      getMargin(left: 16, top: 8, right: 16),
                                  textInputAction: TextInputAction.done,
                                  alignment: Alignment.center,
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 15,
                                          right: 13,
                                          bottom: 15),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgEye)),
                                  suffixConstraints: BoxConstraints(
                                      minWidth: getHorizontalSize(16.00),
                                      minHeight: getVerticalSize(13.00)),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "Please enter valid password";
                                    }
                                    return null;
                                  },
                                  isObscureText: true),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 16, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Obx(() => CustomCheckbox(
                                                text: "lbl_remember_me".tr,
                                                iconSize: 20,
                                                value:
                                                    controller.checkbox.value,
                                                padding: getPadding(
                                                    top: 1, bottom: 1),
                                                onChange: (value) {
                                                  controller.checkbox.value =
                                                      value;
                                                })),
                                            Padding(
                                                padding: getPadding(
                                                    top: 5, bottom: 2),
                                                child: Text(
                                                    "msg_forgot_password".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyMedium14
                                                        .copyWith(
                                                            height: 1.00)))
                                          ]))),
                              CustomButton(
                                  width: 396,
                                  text: "lbl_log_in2".tr,
                                  margin:
                                      getMargin(left: 16, top: 24, right: 16),
                                  alignment: Alignment.center),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 28, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(130.00),
                                                margin: getMargin(
                                                    top: 8, bottom: 6),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray200)),
                                            Padding(
                                                padding: getPadding(left: 8),
                                                child: Text(
                                                    "msg_or_continue_wit".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyRegular16
                                                        .copyWith(
                                                            height: 1.00))),
                                            Container(
                                                height: getVerticalSize(1.00),
                                                width:
                                                    getHorizontalSize(129.00),
                                                margin: getMargin(
                                                    left: 8, top: 8, bottom: 6),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .bluegray200))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapButton();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 16, top: 29, right: 16),
                                          decoration: AppDecoration
                                              .outlineBlueA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                GestureDetector(
                                                    onTap: () {
                                                      onTapImgGoogle();
                                                    },
                                                    child: Padding(
                                                        padding: getPadding(
                                                            top: 13,
                                                            bottom: 13),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgGoogle,
                                                            height:
                                                                getSize(23.00),
                                                            width: getSize(
                                                                23.00)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 17,
                                                        bottom: 16),
                                                    child: Text(
                                                        "msg_sign_in_with_go"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium16BlueA700
                                                            .copyWith(
                                                                height: 1.00)))
                                              ])))),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapButton1();
                                      },
                                      child: Container(
                                          margin: getMargin(
                                              left: 16, top: 17, right: 16),
                                          decoration: AppDecoration
                                              .outlineBlueA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder5),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                    height: getSize(24.00),
                                                    width: getSize(24.00),
                                                    margin: getMargin(
                                                        top: 13, bottom: 13),
                                                    child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            EdgeInsets.all(0),
                                                        color: ColorConstant
                                                            .blue700,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        3.00))),
                                                        child: Stack(children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .bottomRight,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapImgFacebook();
                                                                      },
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  10,
                                                                              top:
                                                                                  10,
                                                                              right:
                                                                                  3),
                                                                          child: CommonImageView(
                                                                              svgPath: ImageConstant.imgFacebook,
                                                                              height: getVerticalSize(19.00),
                                                                              width: getHorizontalSize(11.00)))))
                                                        ]))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8,
                                                        top: 18,
                                                        bottom: 16),
                                                    child: Text(
                                                        "msg_sign_in_with_fa"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium16BlueA700
                                                            .copyWith(
                                                                height: 1.00)))
                                              ])))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 17, right: 16),
                                      decoration: AppDecoration.outlineBlueA700
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder5),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                margin: getMargin(
                                                    top: 13, bottom: 13),
                                                child: Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: EdgeInsets.all(0),
                                                    color: ColorConstant
                                                        .lightBlue800,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    1.00))),
                                                    child: Stack(children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      all: 4),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgVector,
                                                                  height:
                                                                      getSize(
                                                                          15.00),
                                                                  width: getSize(
                                                                      15.00))))
                                                    ]))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 8,
                                                    top: 18,
                                                    bottom: 16),
                                                child: Text(
                                                    "msg_sign_in_with_li".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyMedium16BlueA700
                                                        .copyWith(
                                                            height: 1.00)))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 29,
                                          right: 16,
                                          bottom: 20),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "Don’t have an account? "
                                                    .tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.fromHex(
                                                            "#ff12282a"),
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Gilroy',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.63)),
                                            TextSpan(
                                                text: ' ',
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.fromHex(
                                                            "#ff12282a"),
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Gilroy',
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.63)),
                                            TextSpan(
                                                text: "Sign up.".tr,
                                                style: TextStyle(
                                                    color:
                                                        ColorConstant.fromHex(
                                                            "#ff0061ff"),
                                                    fontSize: getFontSize(16),
                                                    fontFamily: 'Gilroy',
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.63,
                                                    decoration: TextDecoration
                                                        .underline))
                                          ]),
                                          textAlign: TextAlign.left)))
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapButton() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgGoogle() async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapButton1() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }
}
