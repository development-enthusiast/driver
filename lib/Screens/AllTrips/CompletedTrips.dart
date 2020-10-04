import 'package:driverapp/Classes/Constants.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:rating_bar/rating_bar.dart';

class CompletedTrips extends StatefulWidget {
  @override
  _CompletedTripsState createState() => _CompletedTripsState();
}

class _CompletedTripsState extends State<CompletedTrips> {
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
                        builder: (context) => CompletedTripExpanded(
                          pWidth: pWidth,
                          pHeight: pHeight,
                          controller: controller,
                        ),
                      ),
                    );
                  },
                  child:
                      CompletedTripCollapsed(pHeight: pHeight, pWidth: pWidth));
            },
          ),
        ),
      ],
    );
  }
}

class CompletedTripCollapsed extends StatelessWidget {
  const CompletedTripCollapsed({
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
                      'You rated  ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: pHeight * 0.018,
                      ),
                    ),
                    RatingBar.readOnly(
                      size: pHeight * 0.024,
                      filledIcon: Icons.star,
                      isHalfAllowed: true,
                      initialRating: 3.5,
                      emptyIcon: Icons.star_border,
                      halfFilledIcon: Icons.star_half,
                      filledColor: Colors.yellow,
                    )
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
                  Icons.check_circle_outline,
                  color: kAccentColor,
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

class CompletedTripExpanded extends StatelessWidget {
  const CompletedTripExpanded({
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
                              Icons.check_circle_outline,
                              color: kAccentColor,
                              size: pHeight * 0.035,
                            ),
                            SizedBox(
                              height: pHeight * 0.01,
                            ),
                            Text(
                              'Trip completed',
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
          Card(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: pWidth,
                    height: pHeight * 0.15,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'images/money.png',
                          scale: 3.5,
                        ),
                        SizedBox(
                          width: pWidth * 0.02,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: pHeight * 0.02,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Ride Fare -  ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                                Text(
                                  '\$ 13',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Time Fare -   ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                                Text(
                                  '\$ 5',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Add ons -   ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                                Text(
                                  '\$ 2',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Tax -   ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                                Text(
                                  '\$ 1',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: pWidth * 0.8,
                              child: Divider(
                                color: Colors.black.withOpacity(0.15),
                                thickness: 1.5,
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'Total Fare -   ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                                Text(
                                  '\$ 21',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: pHeight * 0.02,
                                      fontFamily: 'Roboto'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Payment Mode',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontSize: pHeight * 0.025),
                  ),
                  Text(
                    'Cash',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontSize: pHeight * 0.025),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(
                    'images/money.png',
                    scale: 3.5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Commission deducted',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: pHeight * 0.025),
                      ),
                      Text(
                        'Inclusive of taxes',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: pHeight * 0.018),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '\$ ',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: pHeight * 0.02),
                      ),
                      Text(
                        '2.1',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontWeight: FontWeight.bold,
                            fontSize: pHeight * 0.02),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Your rating',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.55),
                        fontSize: pHeight * 0.025),
                  ),
                  RatingBar.readOnly(
                    size: pHeight * 0.04,
                    filledIcon: Icons.star,
                    isHalfAllowed: true,
                    initialRating: 3.5,
                    emptyIcon: Icons.star_border,
                    halfFilledIcon: Icons.star_half,
                    filledColor: Colors.yellow,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: pHeight * 0.02,
          ),
          Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Invoice via mail',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: pHeight * 0.025,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.black.withOpacity(0.15),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        'Support',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: pHeight * 0.025,
                            fontFamily: 'Roboto'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
