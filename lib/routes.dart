import 'package:customer_service/modules/customer_service_module/bindings/customer_service_binding.dart';
import 'package:customer_service/modules/customer_service_module/views/customer_service_screen.dart';
import 'package:customer_service/modules/help_faqs_module/bindings/help_faqs_binding.dart';
import 'package:customer_service/modules/help_faqs_module/views/help_faqs_view.dart';
import 'package:get/get.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.customerService,
      page: () => const CustomerServiceScreen(),
      binding: CustomerServiceBinding(),
    ),
    GetPage(
      name: AppRoutes.helpFaqs,
      page: () => const HelpFaqsView(),
      binding: HelpFaqsBinding(),
    ),
    // GetPage(
    //   name: AppRoutes.contactUs,
    //   page: () => ContactUsView(),
    //   binding: ContactUsBinding(),
    // ),
  ];
}

class AppRoutes {
  static const String customerService = '/customer_service';
  static const String helpFaqs = '/help_faqs';
  static const String contactUs = '/contact_us';
  static const String chat = '/chat';
}
