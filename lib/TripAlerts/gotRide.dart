import 'dart:async';

import 'package:driverapp/TripAlerts/pickRide.dart';
import 'package:driverapp/utilities/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:slider_button/slider_button.dart';
import 'package:fluid_slider/fluid_slider.dart';

class Gotride extends StatefulWidget {
  @override
  _GotrideState createState() => _GotrideState();
}

class _GotrideState extends State<Gotride> {
  Completer<GoogleMapController> _controller = Completer();
  static GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  static const LatLng _center = const LatLng(20.5937, 78.9629);
  // static const LatLng _anotherLatLng = const LatLng(20.5937, 78.9629);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  // static MarkerId markerId1 = MarkerId("1");
  // static MarkerId markerId2 = MarkerId("12");

  // final Set<Marker> _markers = {
  //   Marker(
  //     markerId: markerId1,
  //     position: _center,
  //     infoWindow: InfoWindow(
  //       title: 'Customer Location',
  //       snippet: 'WeTaxi',
  //     ),
  //     onTap: () {
  //       _scaffoldKey.currentState.showBottomSheet((context) => Container(
  //             height: 350,
  //             width: 400,
  //             child: Text("car"),
  //           ));
  //     },
  //   ),
  // };
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(children: <Widget>[
        GoogleMap(
          onTap: (latLng) {
            _scaffoldKey.currentState.showBottomSheet((context) => Container(
                  height: SizeConfig.deviceHeight * 45,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14.0),
                          topRight: Radius.circular(14.0)),
                      image: DecorationImage(
                          image: AssetImage("images/bottom.png"),
                          fit: BoxFit.cover)),
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.deviceWidth * 5,
                              bottom: SizeConfig.deviceHeight * 15),
                          child: Text(
                            "You got a Ride now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SliderButton(
                        action: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pickride(),
                            ),
                          );
                        },
                        label: Text(
                          "Slide to Ride",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        icon: Center(
                            child: Icon(
                          Icons.circle,
                          color: Colors.green,
                          size: 40.0,
                          semanticLabel:
                              'Text to announce in accessibility modes',
                        )),
                        buttonColor: Colors.green,
                        backgroundColor: Colors.grey,
                        highlightedColor: Colors.green,
                        baseColor: Colors.black,
                      )
                    ],
                  ),
                ));
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
