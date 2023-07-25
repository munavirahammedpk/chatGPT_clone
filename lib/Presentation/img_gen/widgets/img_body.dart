import 'package:chat_gpt/Presentation/constants/colors.dart';
import 'package:chat_gpt/Presentation/img_gen/widgets/img_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Application/img_gen/img_gen_bloc.dart';

class ImgBodyWidget extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  ImgBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImgGenBloc, ImgGenState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Center(
              child: Text(
                'Error while generataing Images',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          );
        } else if (state.chatMessageList.isEmpty) {
          return  Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: botBackgroundColor,
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Dall e 2 is an AI Image generator, It helps to create images in your natural language.eg."a photo of an astronaut riding a horse" ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        } else {
          if (_scrollController.hasClients) {
            _scrollController.animateTo(
                _scrollController.position.maxScrollExtent+100,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeOut);
          }
          return ListView.builder(
            controller: _scrollController,
            itemCount: state.chatMessageList.length,
            itemBuilder: (context, index) {
              var response = state.chatMessageList[index];
              return ImgItemWidget(
                  chatMessageType: response.chatMessageType,
                  imgUrl: response.text);
            },
          );
        }
      },
    );
  }
}
