import 'package:driverapp/Widgets/MessageBubble.dart';
import 'package:driverapp/Widgets/SendMessage.dart';
import 'package:flutter/material.dart';

import '../../Classes/Constants.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(5),
                child: MessageBubble(),
              ),
            ),
            SendMessage(),
          ],
        ),
      ),
    );
  }
}
