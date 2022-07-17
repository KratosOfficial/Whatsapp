import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/StatusList.dart';
import 'package:whatsapp/utils/info.dart';

import '../utils/Statuschatlist.dart';

class Status_Screen extends StatefulWidget {
  const Status_Screen({Key? key}) : super(key: key);

  @override
  State<Status_Screen> createState() => _Status_ScreenState();
}

class _Status_ScreenState extends State<Status_Screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: NetworkImage(chats[0].avatar),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
            title: Text("My Status"),
            subtitle: Text("Tap to add status update"),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),

            child: Text("Recent Updates"),
          ),
          for (int i = 1; i < chats.length; i++)
            StatusList(
              chat: chats[i],
            ),
        ],
      ),
    );
  }
}