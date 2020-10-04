import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Widgets/Documents.dart';
import 'package:driverapp/Widgets/YourDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFECECEC),
        appBar: AppBar(
          backgroundColor: kSecondaryColor,
          actions: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontSize: pHeight * 0.025,
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelStyle: TextStyle(fontSize: pHeight * 0.02),
            labelColor: kAccentColor,
            unselectedLabelColor: Colors.white,
            indicatorColor: kAccentColor,
            tabs: <Widget>[
              Tab(
                text: 'Your details',
              ),
              Tab(
                text: 'Documents',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            YourDetails(pHeight: pHeight, pWidth: pWidth),
            Documents(),
          ],
        ),
      ),
    );
  }
}
