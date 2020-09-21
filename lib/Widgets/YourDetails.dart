import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class YourDetails extends StatefulWidget {
  const YourDetails({
    Key key,
    @required this.pHeight,
    @required this.pWidth,
  }) : super(key: key);

  final double pHeight;
  final double pWidth;

  @override
  _YourDetailsState createState() => _YourDetailsState();
}

class _YourDetailsState extends State<YourDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: widget.pHeight * 0.2,
          width: widget.pWidth,
          decoration: BoxDecoration(color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: widget.pWidth * 0.08,
              ),
              Column(
                children: <Widget>[
                  SizedBox(
                    height: widget.pHeight * 0.01,
                  ),
                  Image.asset(
                    'images/man.png',
                    height: widget.pHeight * 0.15,
                    width: widget.pHeight * 0.15,
                  ),
                  Text(
                    'Harvey Specter',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.65),
                        fontFamily: 'Roboto',
                        fontSize: widget.pHeight * 0.023),
                  )
                ],
              ),
              SizedBox(
                width: widget.pWidth * 0.12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(
                    height: widget.pHeight * 0.02,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      size: widget.pHeight * 0.035,
                      color: CupertinoColors.black.withOpacity(0.65),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: widget.pHeight * 0.04,
                  ),
                  Text(
                    'Your rating',
                    style: TextStyle(
                        color: CupertinoColors.black.withOpacity(0.65),
                        fontFamily: 'Roboto',
                        fontSize: widget.pHeight * 0.02),
                  ),
                  SizedBox(
                    height: widget.pHeight * 0.01,
                  ),
                  RatingBar.readOnly(
                    filledColor: Colors.yellow,
                    size: widget.pHeight * 0.04,
                    initialRating: 4.0,
                    isHalfAllowed: true,
                    halfFilledIcon: Icons.star_half,
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Container(
            height: widget.pHeight * 0.2,
            width: widget.pWidth,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: widget.pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Personal Details',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.65),
                        fontSize: widget.pHeight * 0.025,
                        fontFamily: 'Roboto'),
                  ),
                ),
                SizedBox(
                  height: widget.pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: kAccentColor,
                        size: widget.pHeight * 0.025,
                      ),
                      SizedBox(
                        width: widget.pWidth * 0.02,
                      ),
                      Text(
                        'Place, Country',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.65),
                            fontFamily: 'Roboto',
                            fontSize: widget.pHeight * 0.018),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: kAccentColor,
                        size: widget.pHeight * 0.025,
                      ),
                      SizedBox(
                        width: widget.pWidth * 0.02,
                      ),
                      Text(
                        '+91 9876543210',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.65),
                            fontFamily: 'Roboto',
                            fontSize: widget.pHeight * 0.018),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: widget.pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: kAccentColor,
                        size: widget.pHeight * 0.025,
                      ),
                      SizedBox(
                        width: widget.pWidth * 0.02,
                      ),
                      Text(
                        'johndoe@example.com',
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.65),
                            fontFamily: 'Roboto',
                            fontSize: widget.pHeight * 0.018),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            elevation: 2,
            child: Container(
              height: widget.pHeight * 0.16,
              width: widget.pWidth,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: widget.pWidth * 0.02,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: widget.pHeight * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Service Details',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.65),
                              fontSize: widget.pHeight * 0.025,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      SizedBox(
                        height: widget.pHeight * 0.015,
                      ),
                      Image.asset(
                        'images/car.png',
                        height: widget.pHeight * 0.06,
                      ),
                      SizedBox(
                        height: widget.pHeight * 0.005,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Comfort',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.65),
                              fontSize: widget.pHeight * 0.02,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: widget.pWidth * 0.1,
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        height: widget.pHeight * 0.02,
                      ),
                      SizedBox(
                        height: widget.pHeight * 0.06,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'NU 20 TMV',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.85),
                              fontSize: widget.pHeight * 0.025,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      SizedBox(
                        height: widget.pHeight * 0.005,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Mini Cab - Black',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.85),
                              fontSize: widget.pHeight * 0.025,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            elevation: 2,
            child: Container(
              height: widget.pHeight * 0.16,
              width: widget.pWidth,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: widget.pWidth * 0.02,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: widget.pHeight * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Add ons selected',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.65),
                              fontSize: widget.pHeight * 0.025,
                              fontFamily: 'Roboto'),
                        ),
                      ),
                      SizedBox(
                        height: widget.pHeight * 0.015,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: widget.pWidth * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/walkhelp.png',
                                height: widget.pHeight * 0.06,
                              ),
                              Text(
                                'Walking Stick',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.65),
                                    fontFamily: 'Roboto',
                                    fontSize: widget.pHeight * 0.02),
                              )
                            ],
                          ),
                          SizedBox(
                            width: widget.pWidth * 0.4,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'images/wheelchair.png',
                                height: widget.pHeight * 0.06,
                              ),
                              Text(
                                'Wheelchair',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.65),
                                    fontFamily: 'Roboto',
                                    fontSize: widget.pHeight * 0.02),
                              )
                            ],
                          ),
                          SizedBox(
                            width: widget.pWidth * 0.05,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
