import 'package:customer_service/modules/help_faqs_module/controllers/customer_service_controller.dart';
import 'package:get/get.dart';


class HelpFaqsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpFaqsController>(() => HelpFaqsController());
  }
}