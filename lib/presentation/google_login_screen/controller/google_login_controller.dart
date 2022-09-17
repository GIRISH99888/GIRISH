import '/core/app_export.dart';
import 'package:itr/presentation/google_login_screen/models/google_login_model.dart';
import 'package:flutter/material.dart';

class GoogleLoginController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController inputFieldOneController = TextEditingController();

  Rx<GoogleLoginModel> googleLoginModelObj = GoogleLoginModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    inputFieldOneController.dispose();
  }
}
