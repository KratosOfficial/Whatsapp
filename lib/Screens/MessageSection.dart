import 'package:flutter/material.dart';

import '../Widgets/ChatList.dart';
import '../utils/info.dart';

class Message_screeen extends StatefulWidget {
  const Message_screeen({Key? key}) : super(key: key);

  @override
  State<Message_screeen> createState() => _Message_screeenState();
}

class _Message_screeenState extends State<Message_screeen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png"
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(backgroundColor: Color(0xFF075E54),
          elevation: 0,
          title: Text(
            info[0]['name'].toString(),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.video_call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.call),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ) ,
        body: Column(
          children: [
            const Expanded(
              child: ChatList(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, top:10, bottom: 5),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey,),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.attach_file_sharp, color: Colors.grey,), SizedBox(width: 10,),
                        Icon(Icons.currency_rupee_rounded, color: Colors.grey,),SizedBox(width: 10,),
                        Icon(Icons.camera_alt, color: Colors.grey,)
                      ],
                    ),
                  ),
                  hintText: 'Type a message!',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}