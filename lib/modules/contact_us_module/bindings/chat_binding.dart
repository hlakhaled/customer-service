import 'package:customer_service/modules/customer_service_module/controllers/customer_service_controller.dart';
import 'package:get/get.dart';


class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomerServiceController>(() => CustomerServiceController());
  }
}