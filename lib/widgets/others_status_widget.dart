import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class OthersStatusWidget extends StatelessWidget {

  late StatusModel statusModel;

  OthersStatusWidget({required this.statusModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      child: ListTile(
        leading: Stack(children: [
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: Color(0xff0EA293),
              borderRadius: BorderRadius.circular(30)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(statusModel.avatarUrl),
            ),
          ),
        ]),
        title: Text(
          statusModel.userName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          statusModel.time,
          style: const TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
