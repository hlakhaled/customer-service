import 'package:customer_service/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.customerService,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
