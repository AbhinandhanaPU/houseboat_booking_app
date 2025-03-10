import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/data/chat_history.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/chat_card_widget.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          final chat = chatList[index];
          return ChatCardWidget(
            profilePicture: chat['profilePicture'],
            userName: chat['userName'],
            lastMessage: chat['lastMessage'],
            messageTime: chat['messageTime'],
            messageStatus: chat['messageStatus'],
            onTap: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context) =>  ,));
            },
          );
        },
      ),
    );
  }
}
