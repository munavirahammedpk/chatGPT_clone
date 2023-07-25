import 'package:chat_gpt/Application/img_gen/img_gen_bloc.dart';
import 'package:chat_gpt/Presentation/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ImgInputFieldWidget extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();
  ImgInputFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: _textEditingController,
            textCapitalization: TextCapitalization.sentences,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              hintText: 'Type here',
              fillColor: botBackgroundColor,
              filled: true,
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
        Container(
          color: botBackgroundColor,
          child: IconButton(
            color: const Color.fromRGBO(142, 142, 160, 1),
            onPressed: () {
              if (_textEditingController.text.isEmpty) {
                //_textEditingController.text='hi,';
                return;
              }
              BlocProvider.of<ImgGenBloc>(context).add(
                GenerateImg(prompt: _textEditingController.text),
              );
              _textEditingController.clear();
            },
            icon: const Icon(Icons.send),
          ),
        ),
      ],
    );
  }
}
