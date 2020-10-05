import 'package:flutter/material.dart';

import '../Classes/Constants.dart';

class MessageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: Container(
                width: pWidth / 2,
                height: pHeight * 0.06,
                decoration: BoxDecoration(
                  color: kChatColor1,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Hello! I have reached.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: pHeight * 0.02,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          child: CircleAvatar(
            backgroundColor: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
