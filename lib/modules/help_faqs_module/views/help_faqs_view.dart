import 'package:customer_service/modules/help_faqs_module/views/widgets/help_faqs_body.dart';
import 'package:flutter/material.dart';

class HelpFaqsView extends StatelessWidget {
  const HelpFaqsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: HelpFaqsBody()));
  }
}
