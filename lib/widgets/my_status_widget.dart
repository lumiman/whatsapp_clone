import 'package:flutter/material.dart';

class MyStatusWidget extends StatelessWidget {
  const MyStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 7),
      child: ListTile(
        leading: Stack(children: [
          const CircleAvatar(
            radius: 26,
            backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=1200'),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                color: const Color(0xff01C851),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          )
        ]),
        title: const Text(
          'My status',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: const Text(
          'tap to add status update',
          style: TextStyle(
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
