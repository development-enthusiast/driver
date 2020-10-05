import 'package:flutter/material.dart';

import '../Classes/Constants.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        leading: InkWell(
          onTap: () {},
          child: Image.asset('images/menu.png'),
        ),
        centerTitle: true,
        title: Text('Support & FAQ'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(pWidth * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How long can I drive in a day?',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: pHeight * 0.02,
            ),
            Text(
              'You can drive continuosly for 10 hrs maximum.',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.02,
              ),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Text(
              'Do you provide multiple pickups or drops?',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.025,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: pHeight * 0.02,
            ),
            Text(
              'Sure, we can arrage multiple pickups or drops for your itinerary. Please let us know about all the details of you itinerary and we can make arrangements.',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.02,
              ),
            ),
            SizedBox(
              height: pHeight * 0.1,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: FlatButton.icon(
                icon: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
                onPressed: () {},
                label: Text('Support'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
