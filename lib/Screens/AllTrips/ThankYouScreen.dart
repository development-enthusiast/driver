import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

import '../../Classes/Constants.dart';

class ThankYouScreen extends StatelessWidget {
  static const routeName = 'ThankYouScreen';
  final int value;

  const ThankYouScreen({Key key, this.value = 0})
      : assert(value != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFECECEC),
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
              height: pHeight * 0.15,
            ),
            Container(
              width: pWidth,
              padding: EdgeInsets.all(pWidth * 0.02),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: pWidth,
                    child: Column(
                      children: [
                        Text(
                          '\$ 18.9',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: pHeight * 0.06,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('(Inclusive of Tax)'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.08,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'images/check.png',
                          height: pHeight * 0.1,
                          width: pHeight * 0.1,
                        ),
                        SizedBox(
                          height: pHeight * 0.01,
                        ),
                        Text(
                          'Ride Completed successfully',
                          style: TextStyle(
                            color: kSecondaryColor,
                            fontSize: pHeight * 0.025,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: pHeight * 0.1,
                  ),
                  Container(
                      child: Column(
                    children: [
                      Text(
                        'Thank You for choosing us!',
                        style: TextStyle(
                          fontSize: pHeight * 0.025,
                        ),
                      ),
                      SizedBox(height: pHeight * 0.05),
                      OutlineButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              elevation: 16,
                              child: Container(
                                height: pHeight * 0.4,
                                width: pWidth * 0.5,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Thanks for rating rider',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: pHeight * 0.03),
                                    ),
                                    RatingBar(
                                      filledColor: Colors.yellow,
                                      size: pHeight * 0.05,
                                      initialRating: 4.0,
                                      isHalfAllowed: true,
                                      halfFilledIcon: Icons.star_half,
                                      filledIcon: Icons.star,
                                      emptyIcon: Icons.star_border,
                                      onRatingChanged: (double rating) {},
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(pWidth * 0.02),
                                      child: TextField(
                                        minLines: 3,
                                        maxLines: 5,
                                        decoration: InputDecoration(
                                          hintText: 'Write your review here',
                                          filled: true,
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlineButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Later',
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                        FlatButton(
                                          color: kButtonColor,
                                          onPressed: () {},
                                          child: Text(
                                            'Submit',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
