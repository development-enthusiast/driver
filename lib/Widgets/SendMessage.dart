import 'package:flutter/material.dart';

import '../Classes/Constants.dart';

class SendMessage extends StatefulWidget {
  @override
  _SendMessageState createState() => _SendMessageState();
}

class _SendMessageState extends State<SendMessage> {
  var _enteredMessage = '';
  final _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                cursorColor: kSecondaryColor,
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Say Something ...',
                  focusColor: kSecondaryColor,
                  hintStyle: TextStyle(color: kSecondaryColor,),
                  suffixIcon: IconButton(
                    color: kSecondaryColor,
                    icon: Icon(Icons.send),
                    onPressed: () {},
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kSecondaryColor),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _enteredMessage = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
