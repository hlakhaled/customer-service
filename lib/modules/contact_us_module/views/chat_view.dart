import 'package:customer_service/modules/contact_us_module/views/widget/chat_view_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ChatViewBody()),
    );
  }
}
