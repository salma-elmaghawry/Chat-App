import 'package:chat_app/constant.dart';

class MessageModel {
  final String Message;

  MessageModel(this.Message);

  factory MessageModel.fromJson(Map<String, dynamic> jsonData) {
    return MessageModel(jsonData[kMessage]);
  }
}
