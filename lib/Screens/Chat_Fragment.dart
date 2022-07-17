import 'package:flutter/material.dart';
import 'package:whatsapp/Widgets/contact_list.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactList(),
    );
  }
}
