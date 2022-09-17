import '/core/app_export.dart';
import 'package:itr/presentation/community_forum_screen/models/community_forum_model.dart';
import 'package:flutter/material.dart';

class CommunityForumController extends GetxController {
  TextEditingController inputFieldController = TextEditingController();

  TextEditingController buttonController = TextEditingController();

  Rx<CommunityForumModel> communityForumModelObj = CommunityForumModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    inputFieldController.dispose();
    buttonController.dispose();
  }
}
