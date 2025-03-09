import 'package:flutter/material.dart';
import 'package:houseboat_booking/app/utils/colors.dart';

class ChatCardWidget extends StatelessWidget {
  final String profilePicture;
  final String userName;
  final String lastMessage;
  final String messageTime;
  final String messageStatus;
  final VoidCallback onTap;

  const ChatCardWidget({
    super.key,
    required this.profilePicture,
    required this.userName,
    required this.lastMessage,
    required this.messageTime,
    required this.messageStatus,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 80,
        width: double.infinity,
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            foregroundImage: AssetImage(profilePicture),
          ),
          title: Text(
            userName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Row(
            spacing: 10,
            children: [
              messageStatus == 'seen'
                  ? Icon(
                      Icons.done_all,
                      size: 18,
                      color: AppColors.lightPrimary,
                    )
                  : Icon(
                      messageStatus == 'delivered'
                          ? Icons.done_all
                          : messageStatus == 'sent'
                              ? Icons.done
                              : Icons.access_time,
                      size: 18,
                      color: AppColors.lightGrey,
                    ),
              Expanded(
                child: Text(
                  lastMessage,
                  style: TextStyle(color: AppColors.lightGrey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          trailing: Text(
            messageTime,
            style: TextStyle(color: AppColors.lightGrey),
          ),
        ),
      ),
    );
  }
}
