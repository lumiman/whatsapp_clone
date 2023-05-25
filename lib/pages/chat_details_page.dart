import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/data_dummy.dart';
import 'package:whatsapp_clone/models/chat_message_model.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

TextEditingController _chatText = TextEditingController();

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 22,
          title: Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/39819/woman-girl-eye-models-39819.jpeg?auto=compress&cs=tinysrgb&w=1200"),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Nombre",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Last seen tpday 2:20 PM",
                      style: TextStyle(fontSize: 14, color: Colors.white60),
                    ),
                  ],
                ),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.videocam)),
            IconButton(onPressed: () {}, icon: Icon(Icons.call)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Stack(
          children: [
            //fondo
            Container(
              color: Colors.white30,
            ),
            ListView.builder(
                itemCount: chatMessageList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Align(
                    alignment: chatMessageList[index].messageType == 'me'
                        ? Alignment.topRight
                        : Alignment.topLeft,
                    child: Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                          color: chatMessageList[index].messageType == 'me'
                              ? const Color(0xffE3FFC4)
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: const Radius.circular(14),
                            bottomRight: const Radius.circular(14),
                            topRight: chatMessageList[index].messageType == 'me'
                                ? const Radius.circular(0)
                                : const Radius.circular(14),
                            topLeft: chatMessageList[index].messageType == 'me'
                                ? const Radius.circular(14)
                                : const Radius.circular(0),
                          ),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                offset: const Offset(4, 4),
                                blurRadius: 10)
                          ]),
                      child: Text(chatMessageList[index].messageContent),
                    ),
                  );
                }),

            //input
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _chatText,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.sentiment_satisfied_alt,
                              size: 30,
                              color: Colors.black45,
                            ),
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.attach_file,
                                      size: 30,
                                      color: Colors.black45,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.camera_alt,
                                      size: 30,
                                      color: Colors.black45,
                                    )),
                                const SizedBox(
                                  width: 6,
                                )
                              ],
                            ),
                            hintText: "Type message",
                            hintStyle:
                                TextStyle(fontSize: 16, color: Colors.black38),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      GestureDetector(
                        onTap: () {
                          chatMessageList.add(ChatMessageModel(messageContent: _chatText.text, messageType: 'me'));
                          _chatText.text = '';
                          setState(() {

                          });
                        },
                        child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                                color: Color(0xff00887B),
                                shape: BoxShape.circle),
                            child: const Icon(
                              Icons.send,
                              color: Colors.white,
                            )),
                      )
                    ],
                  )),
            ),
          ],
        ));
  }
}
