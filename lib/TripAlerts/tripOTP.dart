import 'dart:async';

import 'package:driverapp/TripAlerts/onRide.dart';
import 'package:driverapp/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:custom_switch_button/custom_switch_button.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:driverapp/TripAlerts/numeric_pad.dart';

class TripOTP extends StatefulWidget {
  final String phoneNumber;

  TripOTP({@required this.phoneNumber});
  @override
  _TripOTPState createState() => _TripOTPState();
}

class _TripOTPState extends State<TripOTP> {
  String code = "";
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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Hexcolor("#2A2E43"),
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
          bottom: PreferredSize(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isChecked = !isChecked;
                });
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
      key: _scaffoldKey,
      body: Stack(children: <Widget>[
        GoogleMap(
          onTap: (latLng) {
            _scaffoldKey.currentState.showBottomSheet(
              (context) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14.0),
                        topRight: Radius.circular(14.0)),
                    color: Hexcolor("#2A2E43"),
                  ),
                  height: SizeConfig.deviceHeight * 70,
                  width: 500,
                  child: Expanded(
                      child: Column(children: [
                    SizedBox(
                      height: pHeight * 0.02,
                    ),
                    Text(
                      "Ride accepted",
                      style: TextStyle(color: Colors.white),
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.deviceHeight * 3.5,
                          horizontal: SizeConfig.deviceWidth * 5),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            buildCodeNumberBox(
                                code.length > 0 ? code.substring(0, 1) : ""),
                            buildCodeNumberBox(
                                code.length > 1 ? code.substring(1, 2) : ""),
                            buildCodeNumberBox(
                                code.length > 2 ? code.substring(2, 3) : ""),
                            buildCodeNumberBox(
                                code.length > 3 ? code.substring(3, 4) : ""),
                          ]),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: SizeConfig.deviceWidth * 6),
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => TripOTP(
                              //       phoneNumber: null,
                              //     ),
                              //   ),
                              // );
                            },
                            color: Hexcolor("#E9EBEA"),
                            // textColor: Colors.white,
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Roboto',
                                  fontSize: pHeight * 0.020),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.deviceWidth * 40),
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Onride(),
                                    ),
                                  );
                                },
                                color: Hexcolor("#F41C7B"),
                                // textColor: Colors.white,
                                child: Text(
                                  "Done",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.020),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    // Padding(
                    //   padding:
                    //       EdgeInsets.only(left: SizeConfig.deviceWidth * 40),
                    //   child: Container(
                    //       height: MediaQuery.of(context).size.height * 0.06,
                    //       width: MediaQuery.of(context).size.width * 0.70,
                    //       child: Padding(
                    //           padding: EdgeInsets.only(
                    //               right: SizeConfig.deviceWidth * 8),
                    //           child: Row(children: <Widget>[
                    //             Expanded(
                    //               child: GestureDetector(
                    //                 onTap: () {
                    //                   print("Done");
                    //                 },
                    //                 child: Container(
                    //                   decoration: BoxDecoration(
                    //                     color: Hexcolor("#F41C7B"),
                    //                     borderRadius: BorderRadius.all(
                    //                       Radius.circular(10),
                    //                     ),
                    //                   ),
                    //                   child: Center(
                    //                     child: Text(
                    //                       "Done",
                    //                       style: TextStyle(
                    //                           fontSize: 15,
                    //                           fontWeight: FontWeight.bold,
                    //                           color: Colors.white),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ),
                    //             ),
                    //             Expanded(
                    //               child: Container(
                    //                 height: MediaQuery.of(context).size.height *
                    //                     0.06,
                    //                 width: MediaQuery.of(context).size.width *
                    //                     0.70,
                    //                 child: Row(children: <Widget>[
                    //                   Expanded(
                    //                     child: GestureDetector(
                    //                       onTap: () {
                    //                         print("Cancel");
                    //                       },
                    //                       child: Container(
                    //                         decoration: BoxDecoration(
                    //                           color: Colors.white,
                    //                           borderRadius: BorderRadius.all(
                    //                             Radius.circular(10),
                    //                           ),
                    //                         ),
                    //                         child: Center(
                    //                           child: Text(
                    //                             "Cancel",
                    //                             style: TextStyle(
                    //                                 fontSize: 15,
                    //                                 fontWeight: FontWeight.bold,
                    //                                 color: Colors.black),
                    //                           ),
                    //                         ),
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ]),
                    //               ),
                    //             ),
                    //           ]))),
                    // ),

                    // SizedBox(
                    //   height: pHeight * 0.08,
                    // ),
                    Expanded(
                      child: NumericPad(onNumberSelected: (value) {
                        print(value);
                        setState(() {
                          if (value != -1) {
                            if (code.length < 4) {
                              code = code + value.toString();
                            }
                          } else {
                            code = code.substring(0, code.length - 1);
                          }
                          print(code);
                        });
                      }),
                    )
                  ]))),
            );
          },
          // markers: _markers,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(target: _center, zoom: 11.0),
        ),
      ]),
    );
  }
}

Widget buildCodeNumberBox(String codeNumber) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 8),
    child: SizedBox(
      width: 50,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF6F5FA),
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 25.0,
                spreadRadius: 1,
                offset: Offset(0.0, 0.75))
          ],
        ),
        child: Center(
          child: Text(
            codeNumber,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1F1F1F),
            ),
          ),
        ),
      ),
    ),
  );
}
