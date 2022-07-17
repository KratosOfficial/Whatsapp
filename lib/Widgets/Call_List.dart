import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/MessageSection.dart';
import '../utils/Calls.dart';

class CallList extends StatelessWidget {
  const CallList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 10),
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: Call.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  title: Text(
                    Call[index]['name'].toString(),
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      Call[index]['time'].toString(),
                      style: const TextStyle(fontSize: 15),
                    ),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      Call[index]['profilePic'].toString(),
                    ),
                    radius: 30,
                  ),
                  trailing: Icon(Icons.call),
                ),
              ),
          ],
        );
      },
    ),
    );
  }
}
