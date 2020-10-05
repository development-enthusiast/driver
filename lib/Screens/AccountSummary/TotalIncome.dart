import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar/rating_bar.dart';

class TotalIncome extends StatefulWidget {
  static const routeName = 'TotalIncome';
  @override
  _TotalIncomeState createState() => _TotalIncomeState();
}

class _TotalIncomeState extends State<TotalIncome> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
        bottomOpacity: 0,
        centerTitle: true,
        title: Text(
          'Total Income',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Color(0xFFECECEC),
      body: Column(
        children: <Widget>[
          Container(
            width: pWidth,
            height: pHeight * 0.04,
            color: kSecondaryColor,
            padding: EdgeInsets.symmetric(horizontal: pWidth * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset('images/sort.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Sort',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset('images/filter.png'),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Filter',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Card(
            child: Container(
              height: pHeight * 0.135,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: pWidth * 0.02,
                    ),
                    Image.asset(
                      'images/cash.png',
                      scale: 3.5,
                    ),
                    SizedBox(
                      width: pWidth * 0.02,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'TOTAL INCOME',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: pHeight * 0.025,
                              fontFamily: 'Roboto'),
                        ),
                        Container(
                          width: pWidth * 0.4,
                          child: Text(
                            'for the month till today',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.55),
                                fontSize: pHeight * 0.018,
                                fontFamily: 'Roboto'),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          '\$ ',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'Roboto',
                              fontSize: pHeight * 0.02),
                        ),
                        Text(
                          '123.7',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontFamily: 'Roboto',
                              fontSize: pHeight * 0.035,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: pWidth * 0.02,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: pHeight * 0.02,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: pWidth * 0.02,
                        ),
                        Column(
                          children: <Widget>[
                            Image.asset(
                              'images/man.png',
                              height: pHeight * 0.1,
                              width: pHeight * 0.1,
                            ),
                            Text(
                              'Stephen',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: pHeight * 0.02,
                                  fontFamily: 'Roboto'),
                            )
                          ],
                        ),
                        SizedBox(
                          width: pWidth * 0.1,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Dist.',
                                  style: TextStyle(
                                      color: CupertinoColors.black
                                          .withOpacity(0.5),
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.02),
                                ),
                                Text(
                                  '5 mi',
                                  style: TextStyle(
                                      color: CupertinoColors.black
                                          .withOpacity(0.85),
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.02,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: pWidth * 0.02,
                                ),
                                Text(
                                  'Dur.',
                                  style: TextStyle(
                                      color: CupertinoColors.black
                                          .withOpacity(0.5),
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.02),
                                ),
                                Text(
                                  '20 min',
                                  style: TextStyle(
                                      color: CupertinoColors.black
                                          .withOpacity(0.85),
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.02,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'You rated',
                                  style: TextStyle(
                                      color: CupertinoColors.black
                                          .withOpacity(0.5),
                                      fontFamily: 'Roboto',
                                      fontSize: pHeight * 0.02),
                                ),
                                RatingBar.readOnly(
                                  size: pHeight * 0.02,
                                  initialRating: 3.5,
                                  isHalfAllowed: true,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                  halfFilledIcon: Icons.star_half,
                                  filledColor: Colors.yellow,
                                  halfFilledColor: Colors.yellow,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: pWidth * 0.1,
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
                                      color: CupertinoColors.black
                                          .withOpacity(0.5),
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
                    SizedBox(
                      width: pWidth * 0.9,
                      child: Divider(
                        color: CupertinoColors.black.withOpacity(0.15),
                        thickness: 1.5,
                      ),
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
