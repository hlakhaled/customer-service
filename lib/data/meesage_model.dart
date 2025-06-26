import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String id;
  final String text;
  final bool isUser;
  final DateTime timestamp;

  MessageModel({
    required this.id,
    required this.text,
    required this.isUser,
    required this.timestamp,
  });

  factory MessageModel.fromDoc(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final d = doc.data();
    return MessageModel(
      id: doc.id,
      text: d['text'],
      isUser: d['isUser'],
      timestamp: (d['timestamp'] as Timestamp).toDate(),
    );
  }

  Map<String, dynamic> toMap() => {
        'text': text,
        'isUser': isUser,
        'timestamp': Timestamp.fromDate(timestamp),
      };

  String get hhmm =>
      '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}';
}