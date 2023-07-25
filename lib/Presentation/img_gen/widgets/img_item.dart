import 'package:chat_gpt/Domain/models/chat_model.dart';
import 'package:chat_gpt/Presentation/constants/colors.dart';
import 'package:flutter/material.dart';

class ImgItemWidget extends StatelessWidget {
  final String imgUrl;
  final ChatMessageType chatMessageType;
  const ImgItemWidget(
      {super.key, required this.chatMessageType, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: chatMessageType == ChatMessageType.bot
            ? botBackgroundColor
            : backgroundColor,
        padding: const EdgeInsets.all(8),
        child: chatMessageType == ChatMessageType.bot
            ? SizedBox(
                width: double.infinity,
                height: 512,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                  // loadingBuilder: (context, child, loadingProgress) => Center(child: CircularProgressIndicator(),),
                ),
              )
            : Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.person,
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Text(
                      imgUrl,
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
