import '../controller/community_forum_controller.dart';
import 'package:get/get.dart';

class CommunityForumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommunityForumController());
  }
}
