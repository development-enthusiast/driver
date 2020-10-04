import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:rating_bar/rating_bar.dart';

class CancelledTrips extends StatefulWidget {
  @override
  _CancelledTripsState createState() => _CancelledTripsState();
}

class _CancelledTripsState extends State<CancelledTrips> {
  final controller = MapController(
    location: LatLng(35.68, 51.41),
  );

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CancelledTripExpanded(
                          pWidth: pWidth,
                          pHeight: pHeight,
                          controller: controller,
                        ),
                      ),
                    );
                  },
                  child:
                      CancelledTripCollapsed(pHeight: pHeight, pWidth: pWidth));
            },
          ),
        ),
      ],
    );
  }
}

class CancelledTripCollapsed extends StatelessWidget {
  const CancelledTripCollapsed({
    Key key,
    @required this.pHeight,
    @required this.pWidth,
  }) : super(key: key);

  final double pHeight;
  final double pWidth;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Image.asset(
              'images/man.png',
              height: pHeight * 0.1,
              width: pHeight * 0.1,
            ),
            SizedBox(
              width: pWidth * 0.08,
            ),
            Column(
              children: <Widget>[
                Text(
                  '25-05-2019 (12:45 pm)',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: pHeight * 0.018,
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Dist.  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: pHeight * 0.018,
                      ),
                    ),
                    Text(
                      '5 mi',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: pHeight * 0.018,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: pWidth * 0.02,
                    ),
                    Text(
                      'Dur.  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: pHeight * 0.018,
                      ),
                    ),
                    Text(
                      '25 min',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: pHeight * 0.018,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Your cancellation',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: pHeight * 0.018,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              width: pWidth * 0.08,
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.cancel,
                  color: Colors.red,
                ),
                Text(
                  'Earning',
                  style: TextStyle(
                      color: CupertinoColors.black.withOpacity(0.5),
                      fontSize: pHeight * 0.02),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '\$',
                      style: TextStyle(
                          color: CupertinoColors.black.withOpacity(0.5),
                          fontSize: pHeight * 0.02),
                    ),
                    Text(
                      '17.8',
                      style: TextStyle(
                          color: CupertinoColors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: pHeight * 0.02),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CancelledTripExpanded extends StatelessWidget {
  const CancelledTripExpanded({
    Key key,
    @required this.pWidth,
    @required this.pHeight,
    @required this.controller,
  }) : super(key: key);

  final double pWidth;
  final double pHeight;
  final MapController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        actions: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Trips Summary',
                style: TextStyle(
                  color: CupertinoColors.white,
                  fontSize: pHeight * 0.025,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Column(
              children: <Widget>[
                Container(
                  width: pWidth,
                  height: pHeight * 0.15,
                  child: Map(controller: controller),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: pWidth,
                    height: pHeight * 0.15,
                    child: Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.watch_later,
                                  color: kAccentColor,
                                ),
                                SizedBox(
                                  width: pWidth * 0.02,
                                ),
                                Text(
                                  '25-05-2019 at 12:45 pm',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: kAccentColor,
                                ),
                                SizedBox(
                                  width: pWidth * 0.02,
                                ),
                                Text(
                                  'Trade Center',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_city,
                                  color: kAccentColor,
                                ),
                                SizedBox(
                                  width: pWidth * 0.02,
                                ),
                                Text(
                                  'Home',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Image.asset(
                                  'images/car.png',
                                  scale: 6,
                                ),
                                SizedBox(
                                  width: pWidth * 0.02,
                                ),
                                Text(
                                  'Executive - (Local Trip)',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.cancel,
                              color: Colors.red,
                              size: pHeight * 0.035,
                            ),
                            SizedBox(
                              height: pHeight * 0.01,
                            ),
                            Text(
                              'Rider Cancelled',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.55),
                                  fontSize: pHeight * 0.02,
                                  fontFamily: 'Roboto'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: pHeight * 0.02,
          ),
          Text(
            'Cancellation reason',
            style: TextStyle(
                color: Colors.black.withOpacity(0.85),
                fontSize: pHeight * 0.025,
                fontFamily: 'Roboto'),
          ),
          SizedBox(
            height: pHeight * 0.01,
          ),
          Text(
            'Plan cancelled',
            style: TextStyle(
                color: Colors.black.withOpacity(0.65),
                fontSize: pHeight * 0.025,
                fontFamily: 'Roboto'),
          )
        ],
      ),
    );
  }
}
