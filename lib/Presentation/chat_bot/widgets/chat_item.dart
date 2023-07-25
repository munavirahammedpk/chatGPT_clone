import 'package:chat_gpt/Domain/models/chat_model.dart';
import 'package:chat_gpt/Presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class ChatItemWidget extends StatelessWidget {
  final String text;
  final ChatMessageType chatMessageType;
  const ChatItemWidget({
    super.key,
    required this.text,
    required this.chatMessageType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(16),
      color: chatMessageType == ChatMessageType.bot
          ? botBackgroundColor
          : backgroundColor,
      child: Row(
        children: [
          chatMessageType == ChatMessageType.bot
              ? Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: CircleAvatar(
                      backgroundColor: const Color.fromRGBO(16, 163, 127, 1),
                      child: Image.asset(
                        'assets/images/chat_gpt_logo.png',
                        color: Colors.white,
                      )),
                )
              : Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: const CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SelectableText(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
