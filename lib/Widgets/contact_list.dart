import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/MessageSection.dart';

import '../utils/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: info.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Message_screeen(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  title: Text(
                    info[index]['name'].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      info[index]['message'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                  trailing: Text(
                    info[index]['time'].toString(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    ),
    );
  }
}
