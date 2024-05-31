import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_buble.dart';
import 'package:yes_no_app/presentation/widgets/chat/shared/message_field_box.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.vanityfair.com/photos/65708aec39642b3b61e4e98f/16:9/w_5408,h_3042,c_limit/1636672073'),
          ),
        ),
        title: const Text('Adam Driver'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(children: [
          Expanded(child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ( index % 2 == 0)
              ? const HerMessageBubble() 
              : const MyMessageBubble();
            },
            )
          ),

          //Caja de texto
          const MessageFieldBox(),
        ]),
      ),
    );
  }
}
