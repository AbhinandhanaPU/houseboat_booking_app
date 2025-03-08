import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/views/bottom_nav/tabs/booking/widgets/chat_card_widget.dart';

class ChatHome extends StatelessWidget {
  const ChatHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> chatList = [
      {
        'profilePicture': 'assets/images/houseboat1.jpg',
        'userName': 'Venice Houseboat',
        'lastMessage': 'Hey, how are you?',
        'messageTime': '11:11',
        'messageStatus': '',
      },
      {
        'profilePicture': 'assets/images/houseboat1.jpg',
        'userName': 'Alice houseboat',
        'lastMessage': 'I’m coming tomorrow.',
        'messageTime': '10:45',
        'messageStatus': 'delivered',
      },
      {
        'profilePicture': 'assets/images/houseboat1.jpg',
        'userName': 'Cruise Boats',
        'lastMessage': 'Thanks for the info!',
        'messageTime': '09:30',
        'messageStatus': 'seen',
      },
      {
        'profilePicture': 'assets/images/houseboat1.jpg',
        'userName': 'Emily Davis',
        'lastMessage': 'Call me when you’re free.',
        'messageTime': '08:15',
        'messageStatus': 'sent',
      },
      {
        'profilePicture': 'assets/images/houseboat1.jpg',
        'userName': 'David Johnson',
        'lastMessage': 'Got it! 👍',
        'messageTime': '07:45',
        'messageStatus': 'seen',
      },
    ];
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
