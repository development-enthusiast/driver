import 'package:driverapp/Screens/AllTrips/ThankYouScreen.dart';
import 'package:flutter/material.dart';

import '../../Classes/Constants.dart';

class FinishedTrip extends StatelessWidget {
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
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: pWidth / 4,
                height: pHeight * 0.01,
                color: Color(0xff665EFF),
              ),
              Container(
                width: pWidth / 4,
                height: pHeight * 0.01,
                color: Color(0xff5773FF),
              ),
              Container(
                width: pWidth / 4,
                height: pHeight * 0.01,
                color: Color(0xff3497FD),
              ),
              Container(
                width: pWidth / 4,
                height: pHeight * 0.01,
                color: Color(0xff3ACCE1),
              ),
            ],
          ),
          SizedBox(
            height: pHeight * 0.05,
          ),
          Container(
            width: pWidth,
            padding: EdgeInsets.all(pWidth * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: pHeight * 0.18,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.directions_walk,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.pink,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                width: pWidth * 0.02,
                                height: pHeight * 0.1,
                              ),
                              Positioned(
                                top: pHeight * 0.06,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  width: pWidth * 0.02,
                                  height: pHeight * 0.1,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Trade Center',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text('Rider Pickup'),
                            ],
                          ),
                          Text('Picked up'),
                        ],
                      ),
                      SizedBox(
                        height: pHeight * 0.02,
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.only(left: pWidth * 0.03),
                          width: pWidth,
                          height: pHeight * 0.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: kSecondaryColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    '45 mins',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                      color: kButtonColor,
                                    ),
                                  ),
                                  Text(
                                    'Destination',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                color: kChatColor1,
                                width: pWidth * 0.3,
                                height: pHeight,
                                child: Center(
                                  child: Text(
                                    'Trip Finished',
                                    style: TextStyle(color: kSecondaryColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.06,
                ),
                Container(
                  width: pWidth,
                  height: pHeight * 0.25,
                  child: Column(
                    children: [
                      Text(
                        "Ride Fare",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: pHeight * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '\$ 18.9',
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: pHeight * 0.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('(Inclusive of Tax)'),
                    ],
                  ),
                ),
                Container(
                  height: pHeight * 0.08,
                  width: pWidth,
                  child: Card(
                    elevation: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Payment Mode',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        OutlineButton(
                          onPressed: () {},
                          child: Text('Cash'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.05,
                ),
                FlatButton(
                  color: kButtonColor,
                  onPressed: () =>
                      Navigator.of(context).pushNamed(ThankYouScreen.routeName),
                  child: Text(
                    'Cash Received',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
