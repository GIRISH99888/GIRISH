import '../controller/interactive_faqs_controller.dart';
import 'package:get/get.dart';

class InteractiveFaqsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InteractiveFaqsController());
  }
}
