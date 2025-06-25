
import 'package:customer_service/modules/customer_service_module/views/widgets/customer_service_body.dart';
import 'package:flutter/material.dart';

class CustomerServiceScreen extends StatelessWidget {
  const CustomerServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CustomerServiceBody()),
    );
  }
}
