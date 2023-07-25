import 'package:chat_gpt/Presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../Application/generate_respo/generate_response_bloc.dart';
import 'chat_item.dart';

class ChatBodyWidget extends StatelessWidget {
  ChatBodyWidget({super.key});
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenerateResponseBloc, GenerateResponseState>(
      builder: (context, state) {
        // if (state.isloading) {
        //   return Row(
        //     children: [
        //       Container(
        //         height: 100,
        //         color: Colors.yellow,
        //         alignment: Alignment.bottomCenter,
        //         child: const CircularProgressIndicator(),
        //       ),
        //     ],
        //   );
        // }
        //  else
        if (state.isError) {
          return const Center(
            child:  Text(
              'Error while generating Response',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          );
        } else if (state.chatMessageList.isEmpty) {
          return Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              color: botBackgroundColor,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'ChatGPT (Chat Generative Pre-trained Transformer) is a chatbot developed by OpenAI and launched in November 2022.\n\nType and send something and just explore it',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 3),
                ),
              ),
            ),
          );
        }
        
         else {
          if (scrollController.hasClients) {
            scrollController.animateTo(
              scrollController.position.maxScrollExtent+100,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeOut,
            );
          }
          return ListView.builder(
            controller: scrollController,
            itemCount: state.chatMessageList.length,
            itemBuilder: (context, index) {
              var message = state.chatMessageList[index];
              
              return ChatItemWidget(
                text: message.text,
                chatMessageType: message.chatMessageType,
              );
            },
          );
        }
      },
    );
  }
}
