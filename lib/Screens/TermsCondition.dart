import 'package:flutter/material.dart';

import '../Classes/Constants.dart';

class TermsCondition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        leading: InkWell(
          onTap: () {},
          child: Image.asset('images/menu.png'),
        ),
        title: Text('Terms & Conditions'),
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
              'Terms & Conditions for Services',
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
              'XYZ Private Limited and their affiliates (including its parent company, referred to as ("we","us","our")are committed to protecting and respecting your privacy and provideing with the information, options and choices necessary for you to control how we use your information.This privacy policy describes how we collect and use personal information to provoide services operated by or on behalf of us. This policy applies to users of our website("Website"or "Site") or mobile application("App")',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.02,
              ),
            ),
            SizedBox(
              height: pHeight * 0.03,
            ),
            Text(
              '1. Registration',
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
              'By engaging with the Site and/or App, you acknowledge you have read and understood this privacy policy.',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: pHeight * 0.02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
