import 'package:flutter/material.dart';

import '../utils/Statuschatlist.dart';

class StatusList extends StatelessWidget {
  const StatusList({Key? key, required this.chat,}) : super(key: key);
final Chat chat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.green,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                  image: NetworkImage(chat.avatar),
                ),
              ),
            ),
          ),
          title: Text(chat.name),
          subtitle: Text("Yesterday " + chat.time),
        ),

      ],
    );
  }
}
