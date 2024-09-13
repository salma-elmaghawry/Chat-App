import 'package:chat_app/constant.dart';

class MessageModel {
  final String Message;
  final String id;

  MessageModel(this.Message, this.id);

  factory MessageModel.fromJson(Map<String, dynamic> jsonData) {
    return MessageModel(jsonData[kMessage],jsonData['id']);
  }
}
