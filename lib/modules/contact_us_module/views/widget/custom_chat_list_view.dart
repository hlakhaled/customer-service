
import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:customer_service/data/meesage_model.dart';
import 'package:flutter/material.dart';


class CustomChatListView extends StatelessWidget {
  const CustomChatListView({
    super.key,
    required ScrollController scrollController,
    required List<MessageModel> messages,
  })  : _scrollController = scrollController,
        _messages = messages;

  final ScrollController _scrollController;
  final List<MessageModel> _messages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        controller: _scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: _messages.length,
        itemBuilder: (context, i) {
          final m = _messages[i];
          return Align(
            alignment: m.isUser ? Alignment.centerRight : Alignment.centerLeft,
            child: Column(
              crossAxisAlignment:
                  m.isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  padding: const EdgeInsets.all(12),
                  constraints: const BoxConstraints(maxWidth: 260),
                  decoration: BoxDecoration(
                    color: m.isUser ? AppColors.beige : AppColors.salmon,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    m.text,
                    style: TextStyle(
                        color: m.isUser ? AppColors.black : AppColors.white),
                  ),
                ),
                Text(
                  m.hhmm,
                  style: const TextStyle(fontSize: 10, color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}