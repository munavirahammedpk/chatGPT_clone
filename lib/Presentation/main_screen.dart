import 'package:chat_gpt/Presentation/constants/colors.dart';
import 'package:chat_gpt/Presentation/chat_bot/widgets/chat_body.dart';
import 'package:chat_gpt/Presentation/chat_bot/widgets/input_field.dart';
import 'package:chat_gpt/Presentation/img_gen/widgets/img_body.dart';
import 'package:flutter/material.dart';

import 'img_gen/widgets/input_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: const Duration(microseconds: 500),
      length: 2,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "OpenAI's ChatGPT & Dall e 2 by MNVR",
              ),
            ),
          ),
          backgroundColor: botBackgroundColor,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: [
              Tab(
                text: 'Chat Bot',
                icon: Icon(Icons.chat),
              ),
              Tab(
                text: 'Image Generator',
                icon: Icon(Icons.image),
              )
            ],
          ),
        ),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: TabBarView(
              children: [ChatBotWidget(), ImageGeneratorWidget()],
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBotWidget extends StatelessWidget {
  const ChatBotWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //chat body
        Expanded(
          child: ChatBodyWidget(),
        ),
        SizedBox(
          height: 16,
        ),

        //input field and submitt button

        InputFieldWidget()
      ],
    );
  }
}

class ImageGeneratorWidget extends StatelessWidget {
  const ImageGeneratorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //chat body
        Expanded(
          child: ImgBodyWidget(),
        ),
        SizedBox(
          height: 16,
        ),
        //input field and submitt button

        ImgInputFieldWidget()
      ],
    );
  }
}
