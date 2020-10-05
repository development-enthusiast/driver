import 'dart:async';

import 'package:driverapp/Screens/AccountSummary/AccountSummaryMain.dart';
import 'package:driverapp/Screens/AllTrips/ThankYouScreen.dart';
import 'package:driverapp/Screens/Profile.dart';
import 'package:driverapp/Screens/SupportScreen.dart';
import 'package:driverapp/Screens/TermsCondition.dart';
import 'package:driverapp/Screens/TripSummary/Tripsummary.dart';
import 'package:driverapp/TripAlerts/gotRide.dart';
import 'package:driverapp/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(20.5937, 78.9629);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Builder(
                builder: (context) => IconButton(
                  icon: Image.asset(
                    "images/drawer.png",
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            backgroundColor: Hexcolor("#2A2E43"),
            elevation: 0,
            centerTitle: false,
            titleSpacing: 0,
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: SizeConfig.deviceWidth * 8,
                    ),
                    onPressed: () {
                      // do something
                    },
                  ),
                ],
              ),
            ],
            bottom: PreferredSize(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isChecked = !isChecked;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Gotride(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.deviceWidth * 6,
                      bottom: SizeConfig.deviceWidth * 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Transform.scale(
                        scale: 1.5,
                        child: CustomSwitchButton(
                          backgroundColor: Colors.white,
                          unCheckedColor: Hexcolor("#F41C7B"),
                          animationDuration: Duration(milliseconds: 400),
                          checkedColor: Hexcolor("#F41C7B"),
                          checked: isChecked,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              preferredSize: Size.fromHeight(90.0),
            ),
          ),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        drawer: SafeArea(
          child: Drawer(
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: SizeConfig.deviceHeight * 31,
                  child: UserAccountsDrawerHeader(
                    accountName: Text('Aurélien Salomon'),
                    accountEmail: Text('@aureliensalomon'),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/header.png"),
                            fit: BoxFit.cover)),
                    currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: AssetImage("images/avatar.png"),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TripSummary(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.history),
                    title: Text('Trip History'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccountSummaryMain(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.account_balance),
                    title: Text('Account Summary'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SupportScreen(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.support),
                    title: Text('Support & FAQ'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermsCondition(),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text('Privacy'),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('LogOut'),
                  ),
                )
              ],
            ),
            // child: Column(
            //   children: [
            //     Expanded(
            //       flex: 1,
            //       child: Container(
            //         width: SizeConfig.deviceWidth * 80,
            //         child: DrawerHeader(
            //           decoration: BoxDecoration(
            //               image: DecorationImage(
            //                   image: AssetImage("images/header.png"),
            //                   fit: BoxFit.cover)),
            //           child: Text(""),
            //         ),
            //       ),
            //     ),
            //     Expanded(
            //       flex: 2,
            //       child: ListView(children: [
            //         ListTile(
            //           leading: Icon(Icons.home),
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         ),
            //         ListTile(
            //           title: Text("Home"),
            //           onTap: () {
            //             Navigator.of(context).pop();
            //           },
            //         )
            //       ]),
            //     )
            //   ],
            // ),
          ),
        ));
  }
}
