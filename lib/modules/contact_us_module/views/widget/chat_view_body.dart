import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/core/utils/styles.dart';
import 'package:customer_service/core/widgets/custom_app_bar.dart';
import 'package:customer_service/data/common_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/chat_controller.dart';

import 'custom_chat_list_view.dart';


class ChatViewBody extends StatefulWidget {
  const ChatViewBody({super.key});

  @override
  State<ChatViewBody> createState() => _ChatViewBodyState();
}

class _ChatViewBodyState extends State<ChatViewBody> {
  final ChatController c = Get.put(ChatController());
  final TextEditingController _input = TextEditingController();
  final ScrollController _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    ever(c.messages, (_) {
      if (_scroll.hasClients) {
        _scroll.animateTo(
          _scroll.position.maxScrollExtent + 100,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _send() {
    final txt = _input.text.trim();
    if (txt.isNotEmpty) {
      c.sendUserMessage(txt);
      _input.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(
          icon: true,
          commonModel: CommonModel(
            title: 'Assistant',
            description: "I'm Here To Assist You",
          ),
        ),
        Obx(() => CustomChatListView(
              scrollController: _scroll,
              messages: List.from(c.messages),
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 28),
          color: AppColors.beige,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 18,
                child: Icon(Icons.camera_alt_outlined, color: AppColors.salmon),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _input,
                  decoration: InputDecoration(
                    hintStyle: Styles.textStyle14,
                    hintText: 'Write Here...',
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  onSubmitted: (_) => _send(),
                ),
              ),
              const SizedBox(width: 8),
              const CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 18,
                child: Icon(Icons.mic, color: AppColors.salmon),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: _send,
                child: const CircleAvatar(
                  backgroundColor: AppColors.white,
                  radius: 18,
                  child: Icon(Icons.send, color: AppColors.salmon),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}