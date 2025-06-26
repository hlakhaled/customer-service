import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:customer_service/data/meesage_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:uuid/uuid.dart';


class ChatController extends GetxController {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final Uuid _uuid = const Uuid();
  final RxList<MessageModel> messages = <MessageModel>[].obs;
  late final StreamSubscription _sub;

  @override
  void onInit() {
    super.onInit();
    _sub = _db
        .collection('messages')
        .orderBy('timestamp', descending: false)
        .snapshots()
        .listen((snap) {
      messages.value = snap.docs.map((d) => MessageModel.fromDoc(d)).toList();
    });
  }

  Future<void> sendUserMessage(String text) async {
    final cleaned = text.trim();
    if (cleaned.isEmpty) return;

    await _addMessage(cleaned, isUser: true);
    final reply = _generateAssistantResponse(cleaned);
    await Future.delayed(const Duration(milliseconds: 500)); 
    await _addMessage(reply, isUser: false);
  }

  Future<void> _addMessage(String txt, {required bool isUser}) async {
    try {
      await _db.collection('messages').add(MessageModel(
            id: _uuid.v4(),
            text: txt,
            isUser: isUser,
            timestamp: DateTime.now(),
          ).toMap());
    } catch (e) {
      Get.snackbar('Error', 'Failed to send message: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  String _generateAssistantResponse(String userMessage) {
    final lowerMessage = userMessage.toLowerCase().trim();
    final randomIndex = DateTime.now().millisecond % 3;

    // Handle greetings
    if (lowerMessage.contains('hi') ||
        lowerMessage.contains('hello') ||
        lowerMessage.contains('hey')) {
      final responses = [
        'Hey there! Great to see you! What’s on your mind?',
        'Hello! I’m your friendly assistant. How can I help today?',
        'Hi! Ready to chat about anything you like?'
      ];
      return responses[randomIndex];
    }

    // Handle questions
    if (lowerMessage.contains('?') ||
        lowerMessage.contains('what') ||
        lowerMessage.contains('how') ||
        lowerMessage.contains('why') ||
        lowerMessage.contains('where') ||
        lowerMessage.contains('who')) {
      if (lowerMessage.contains('how are you') || lowerMessage.contains('how you doing')) {
        final responses = [
          'I’m doing great, thanks for asking! How about you?',
          'Living the digital life! What’s good with you?',
          'All circuits firing, thanks! How’s your day going?'
        ];
        return responses[randomIndex];
      } else if (lowerMessage.contains('what is') || lowerMessage.contains('what’s')) {
        final responses = [
          'Curious, huh? Tell me more about what you’re asking, like “what’s AI?” or “what’s the weather?”!',
          'Ooh, a “what is” question! Can you give me a bit more context?',
          'Interesting question! What exactly do you want to know about?'
        ];
        return responses[randomIndex];
      } else if (lowerMessage.contains('how to')) {
        final responses = [
          'Love a good “how to”! What are you trying to do? Like “how to code” or “how to cook”?',
          'Let’s figure it out! What’s the “how to” you’re curious about?',
          'Sounds fun! Tell me more about what you want to learn!'
        ];
        return responses[randomIndex];
      } else {
        final responses = [
          'Great question! Can you share a bit more so I can give you a solid answer?',
          'Hmm, that’s intriguing! What exactly are you curious about?',
          'I’m all ears… or rather, all text! What’s the full question?'
        ];
        return responses[randomIndex];
      }
    }

    // Handle thanks
    if (lowerMessage.contains('thanks') || lowerMessage.contains('thank you')) {
      final responses = [
        'You’re so welcome! 😊 What else can I help with?',
        'No problem at all! Ready for your next question!',
        'Happy to help! What’s next on your mind?'
      ];
      return responses[randomIndex];
    }

    // Handle app or customer service queries
    if (lowerMessage.contains('app') || lowerMessage.contains('help')) {
      final responses = [
        'Got a question about the app? Let me know what you need help with!',
        'I’m here to make your app experience smooth! What’s the issue?',
        'App-related question? Fire away, and I’ll do my best to assist!'
      ];
      return responses[randomIndex];
    }

    // Generic responses for statements or unrecognized inputs
    final genericResponses = [
      'That’s cool! Tell me more about “$userMessage”!',
      'Interesting! What else can you share about that?',
      'I’m listening! Want to dive deeper into this topic?'
    ];
    return genericResponses[randomIndex];
  }

  Future<void> simulateCallCenter() async {
    Get.defaultDialog(
      title: 'Call Center',
      barrierDismissible: false,
      content: const Padding(
        padding: EdgeInsets.all(12),
        child: Text('Connecting you with an agent…'),
      ),
    );
    await Future.delayed(const Duration(seconds: 2));
    Get.back();
    await _addMessage('Hello, this is Sara (human agent). How can I help you?',
        isUser: false);
  }

  @override
  void onClose() {
    _sub.cancel();
    super.onClose();
  }
}