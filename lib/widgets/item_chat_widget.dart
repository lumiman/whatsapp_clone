import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chat_model.dart';
import 'package:whatsapp_clone/pages/chat_details_page.dart';

class ItemChatWidget extends StatelessWidget {

  late ChatModel chatModel;

  ItemChatWidget({required this.chatModel
      //required this.avatarUrl, required this.userName, required this.message
      });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => ChatDetailsPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(chatModel.avatarUrl),
        ),
        title: Text(chatModel.username,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
        subtitle: Text(
          chatModel.isTyping == true ? 'Typing...' : chatModel.message,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: chatModel.isTyping == true
                  ? const Color(0xff01C851)
                  : Colors.black45),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12,
                color: chatModel.countMessage > 0
                    ? const Color(0xff01C851)
                    : Colors.black45,
              ),
            ),
            chatModel.countMessage > 0
                ? Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                        color: Color(0xff01C851), shape: BoxShape.circle),
                    alignment: Alignment.center,
                    child: Text(
                      chatModel.countMessage.toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
