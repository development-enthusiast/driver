import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Screens/AllTrips/CancelledTrips.dart';
import 'package:driverapp/Screens/AllTrips/CompletedTrips.dart';
import 'package:driverapp/Widgets/Documents.dart';
import 'package:driverapp/Widgets/YourDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllTrips extends StatefulWidget {
  @override
  _AllTripsState createState() => _AllTripsState();
}

class _AllTripsState extends State<AllTrips> {
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
                  'Trips Summary',
                  style: TextStyle(
                    color: CupertinoColors.white,
                    fontFamily: 'Roboto',
                    fontSize: pHeight * 0.025,
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            labelStyle:
                TextStyle(fontFamily: 'Roboto', fontSize: pHeight * 0.02),
            labelColor: kAccentColor,
            unselectedLabelColor: Colors.white,
            indicatorColor: kAccentColor,
            tabs: <Widget>[
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Cancelled',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CompletedTrips(),
            CancelledTrips(),
          ],
        ),
      ),
    );
  }
}
