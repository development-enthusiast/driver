import 'dart:async';
import 'dart:ui';

import 'package:driverapp/TripAlerts/tripOTP.dart';
import 'package:driverapp/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slider_button/slider_button.dart';
import 'package:fluid_slider/fluid_slider.dart';

class Pickride extends StatefulWidget {
  @override
  _PickrideState createState() => _PickrideState();
}

class _PickrideState extends State<Pickride> {
  Completer<GoogleMapController> _controller = Completer();
  static GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static const LatLng _center = const LatLng(20.5937, 78.9629);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
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
      ),
      key: _scaffoldKey,
      body: Stack(children: <Widget>[
        GoogleMap(
          onTap: (latLng) {
            _scaffoldKey.currentState.showBottomSheet(
              (context) => Container(
                height: SizeConfig.deviceHeight * 50,
                width: 500,
                child: Expanded(
                  child: Column(children: [
                    SizedBox(
                      height: pHeight * 0.02,
                    ),
                    Center(
                      child: Text(
                        "Pick your ride",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: pHeight * 0.00,
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.deviceHeight * 7.5,
                          horizontal: SizeConfig.deviceWidth * 5),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Hexcolor("#2A2E43"),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.deviceWidth * 2),
                                  child: Icon(
                                    Icons.directions_walk,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.deviceWidth * 2),
                                  child: Text(
                                    '12 mins',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: SizeConfig.deviceWidth * 2),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.deviceWidth * 15),
                                  child: Text(
                                    'Trade center',
                                    style: TextStyle(
                                        color: Hexcolor("#C840E9"),
                                        fontSize: SizeConfig.deviceWidth * 3.5),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: SizeConfig.deviceWidth * 13),
                                  child: Text(
                                    'Pickup location',
                                    style: TextStyle(
                                        color: Hexcolor("#959DAD"),
                                        fontSize: SizeConfig.deviceWidth * 2.5),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.deviceWidth * 22),
                              child: Container(
                                color: Hexcolor("#D5D5D5"),
                                width: pWidth * 0.2,
                                height: pHeight,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: SizeConfig.deviceWidth * 2),
                                      child: Icon(
                                        Icons.directions,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: SizeConfig.deviceWidth * 2),
                                      child: Text(
                                        'Navigate',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      height: pHeight * 0.00,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(14.0),
                              topRight: Radius.circular(14.0)),
                          color: Hexcolor("#2A2E43"),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    height: SizeConfig.deviceHeight * 1,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: SizeConfig.deviceWidth * 2),
                                    child: Text(
                                      "Ride accepted",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.deviceHeight * 3,
                                  ),
                                  Expanded(
                                      child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            bottom:
                                                SizeConfig.deviceHeight * 2),
                                        child: IconButton(
                                            icon: Icon(
                                              Icons.call,
                                              color: Colors.green,
                                              size: SizeConfig.deviceWidth * 8,
                                            ),
                                            onPressed: null),
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: SizeConfig.deviceWidth * 2,
                                              bottom:
                                                  SizeConfig.deviceHeight * 2),
                                          child: RaisedButton(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7.0),
                                            ),
                                            onPressed: () {
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder: (context) => DocumentsSubmit(),
                                              //   ),
                                              // );
                                            },
                                            color: Hexcolor("#E9EBEA"),
                                            // textColor: Colors.white,
                                            child: Text(
                                              "Cancel Trip",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Roboto',
                                                  fontSize: pHeight * 0.020),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: SizeConfig.deviceHeight * 2,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: SizeConfig.deviceWidth * 2,
                                      left: SizeConfig.deviceWidth * 10),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage("images/avatar.png"),
                                    radius: 30,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: SizeConfig.deviceWidth * 17,
                                      left: SizeConfig.deviceWidth * 10),
                                  child: Text(
                                    "Ram Kumar",
                                    style: TextStyle(
                                        fontSize: SizeConfig.deviceWidth * 3,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: SizeConfig.deviceHeight * 5,
                                        left: SizeConfig.deviceWidth * 25,
                                      ),
                                      child: IconButton(
                                          icon: Icon(
                                            Icons.message_sharp,
                                            color: Colors.lightBlue,
                                            size: SizeConfig.deviceWidth * 8,
                                          ),
                                          onPressed: null),
                                    ),
                                  ]),
                            ),
                            // Expanded(
                            //   child: Column(
                            //     mainAxisAlignment:
                            //         MainAxisAlignment.spaceEvenly,
                            //     children: [],
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: SizeConfig.deviceWidth * 2,
                                  top: SizeConfig.deviceHeight * 12),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                onPressed: () {
                                  showBottomSheet(
                                      context: context,
                                      builder: (context) => Container(
                                            height:
                                                SizeConfig.deviceHeight * 50,
                                            width: 500,
                                            child: Expanded(
                                              child: Column(children: [
                                                SizedBox(
                                                  height: pHeight * 0.02,
                                                ),
                                                Center(
                                                  child: Text(
                                                    "Get OTP to start ride",
                                                    style: TextStyle(
                                                        color: Colors.black),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: pHeight * 0.00,
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      vertical: SizeConfig
                                                              .deviceHeight *
                                                          7.5,
                                                      horizontal: SizeConfig
                                                              .deviceWidth *
                                                          5),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15),
                                                      color:
                                                          Hexcolor("#2A2E43"),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: SizeConfig
                                                                          .deviceWidth *
                                                                      2),
                                                              child: Icon(
                                                                Icons
                                                                    .directions_walk,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: SizeConfig
                                                                          .deviceWidth *
                                                                      2),
                                                              child: Text(
                                                                '12 mins',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        SizeConfig.deviceWidth *
                                                                            2),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: SizeConfig
                                                                          .deviceWidth *
                                                                      15),
                                                              child: Text(
                                                                'Trade center',
                                                                style: TextStyle(
                                                                    color: Hexcolor(
                                                                        "#C840E9"),
                                                                    fontSize:
                                                                        SizeConfig.deviceWidth *
                                                                            3.5),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: SizeConfig
                                                                          .deviceWidth *
                                                                      13),
                                                              child: Text(
                                                                'Pickup rider',
                                                                style: TextStyle(
                                                                    color: Hexcolor(
                                                                        "#959DAD"),
                                                                    fontSize:
                                                                        SizeConfig.deviceWidth *
                                                                            2.5),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              left: SizeConfig
                                                                      .deviceWidth *
                                                                  22),
                                                          child: Container(
                                                            color: Hexcolor(
                                                                "#D5D5D5"),
                                                            width: pWidth * 0.2,
                                                            height: pHeight,
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: SizeConfig
                                                                              .deviceWidth *
                                                                          2),
                                                                  child: Icon(
                                                                    Icons
                                                                        .directions,
                                                                    color: Colors
                                                                        .blue,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left: SizeConfig
                                                                              .deviceWidth *
                                                                          2),
                                                                  child: Text(
                                                                    'Navigate',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                                SizedBox(
                                                  height: pHeight * 0.00,
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(
                                                                      14.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      14.0)),
                                                      color:
                                                          Hexcolor("#2A2E43"),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              SizedBox(
                                                                height: SizeConfig
                                                                        .deviceHeight *
                                                                    1,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: SizeConfig
                                                                            .deviceWidth *
                                                                        2),
                                                                child: Text(
                                                                  "Arrived",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .white),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: SizeConfig
                                                                        .deviceHeight *
                                                                    3,
                                                              ),
                                                              Expanded(
                                                                  child: Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        bottom:
                                                                            SizeConfig.deviceHeight *
                                                                                2),
                                                                    child: IconButton(
                                                                        icon: Icon(
                                                                          Icons
                                                                              .call,
                                                                          color:
                                                                              Colors.green,
                                                                          size: SizeConfig.deviceWidth *
                                                                              8,
                                                                        ),
                                                                        onPressed: null),
                                                                  ),
                                                                ],
                                                              )),
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: SizeConfig.deviceWidth *
                                                                              2,
                                                                          bottom:
                                                                              SizeConfig.deviceHeight * 2),
                                                                      child:
                                                                          RaisedButton(
                                                                        shape:
                                                                            RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(7.0),
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          // Navigator.push(
                                                                          //   context,
                                                                          //   MaterialPageRoute(
                                                                          //     builder: (context) => DocumentsSubmit(),
                                                                          //   ),
                                                                          // );
                                                                        },
                                                                        color: Hexcolor(
                                                                            "#E9EBEA"),
                                                                        // textColor: Colors.white,
                                                                        child:
                                                                            Text(
                                                                          "Cancel Trip",
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontFamily: 'Roboto',
                                                                              fontSize: pHeight * 0.020),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              )
                                                            ]),
                                                        Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              height: SizeConfig
                                                                      .deviceHeight *
                                                                  2,
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  bottom: SizeConfig
                                                                          .deviceWidth *
                                                                      2,
                                                                  left: SizeConfig
                                                                          .deviceWidth *
                                                                      10),
                                                              child:
                                                                  CircleAvatar(
                                                                backgroundImage:
                                                                    AssetImage(
                                                                        "images/avatar.png"),
                                                                radius: 30,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  bottom: SizeConfig
                                                                          .deviceWidth *
                                                                      17,
                                                                  left: SizeConfig
                                                                          .deviceWidth *
                                                                      10),
                                                              child: Text(
                                                                "Ram Kumar",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        SizeConfig.deviceWidth *
                                                                            3,
                                                                    color: Colors
                                                                        .white),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .only(
                                                                    bottom:
                                                                        SizeConfig.deviceHeight *
                                                                            5,
                                                                    left: SizeConfig
                                                                            .deviceWidth *
                                                                        25,
                                                                  ),
                                                                  child: IconButton(
                                                                      icon: Icon(
                                                                        Icons
                                                                            .message_sharp,
                                                                        color: Colors
                                                                            .lightBlue,
                                                                        size: SizeConfig.deviceWidth *
                                                                            8,
                                                                      ),
                                                                      onPressed: null),
                                                                ),
                                                              ]),
                                                        ),
                                                        // Expanded(
                                                        //   child: Column(
                                                        //     mainAxisAlignment:
                                                        //         MainAxisAlignment.spaceEvenly,
                                                        //     children: [],
                                                        //   ),
                                                        // ),
                                                        Padding(
                                                          padding: EdgeInsets.only(
                                                              right: SizeConfig
                                                                      .deviceWidth *
                                                                  2,
                                                              top: SizeConfig
                                                                      .deviceHeight *
                                                                  12),
                                                          child: RaisedButton(
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          7.0),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          TripOTP(
                                                                    phoneNumber:
                                                                        null,
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            color: Hexcolor(
                                                                "#F41C7B"),
                                                            // textColor: Colors.white,
                                                            child: Text(
                                                              "Enter OTP",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  fontSize:
                                                                      pHeight *
                                                                          0.020),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ));
                                },
                                color: Hexcolor("#F41C7B"),
                                // textColor: Colors.white,
                                child: Text(
                                  "Arrived",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.020),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            );
          },
          // markers: _markers,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ]),
    );
  }
}
