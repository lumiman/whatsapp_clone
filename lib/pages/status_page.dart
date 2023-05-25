import 'package:flutter/material.dart';

import '../data/data_dummy.dart';
import '../widgets/my_status_widget.dart';
import '../widgets/others_status_widget.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MyStatusWidget(),
        const Padding(
          padding: EdgeInsets.only(left: 16, bottom: 10),
          child: Text(
            'Recent updates',
            style: TextStyle(
              color: Color(0xff0EA293),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: statusList.length,
            itemBuilder: (BuildContext context, int index) {
              return OthersStatusWidget(
                statusModel: statusList[index],
              );
            },
          ),
        ),
      ],
    );

  }
}
