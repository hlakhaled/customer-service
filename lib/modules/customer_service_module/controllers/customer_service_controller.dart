import 'package:customer_service/routes.dart';
import 'package:get/get.dart';

class CustomerServiceController extends GetxController {
  void navigateToHelpFaqs() {
    Get.toNamed(AppRoutes.helpFaqs);
  }

  void navigateToContactUs() {
    Get.toNamed(AppRoutes.contactUs);
  }
}
