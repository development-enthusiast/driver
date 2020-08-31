import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Screens/AccountSummary/SettlementDue.dart';
import 'package:driverapp/Screens/AccountSummary/TotalIncome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CommissionDue.dart';

class AccountSummaryMain extends StatefulWidget {
  @override
  _AccountSummaryMainState createState() => _AccountSummaryMainState();
}

class _AccountSummaryMainState extends State<AccountSummaryMain> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        actions: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                'Account Summary',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Roboto',
                    fontSize: pHeight * 0.025),
              ),
            ),
          )
        ],
      ),
      backgroundColor: Color(0xFFECECEC),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => TotalIncome(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4,
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
                            scale: 3,
                          ),
                          SizedBox(
                            width: pWidth * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'TOTAL',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                    fontFamily: 'Roboto'),
                              ),
                              Text(
                                'for the month till today',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.55),
                                    fontSize: pHeight * 0.018,
                                    fontFamily: 'Roboto'),
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
                                '123.72',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontFamily: 'Roboto',
                                    fontSize: pHeight * 0.035,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: pHeight * 0.025,
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
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => SettlementDue(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4,
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
                            scale: 3,
                          ),
                          SizedBox(
                            width: pWidth * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'SETTLEMENT DUE',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                    fontFamily: 'Roboto'),
                              ),
                              Container(
                                width: pWidth * 0.4,
                                child: Text(
                                  'Claim for payment from 17 Aug 2020',
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
                                '7.46',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontFamily: 'Roboto',
                                    fontSize: pHeight * 0.035,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: pHeight * 0.025,
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
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CommissionDue(),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Card(
                  elevation: 4,
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
                            scale: 3,
                          ),
                          SizedBox(
                            width: pWidth * 0.02,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'COMMISSION DUE',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                    fontFamily: 'Roboto'),
                              ),
                              Container(
                                width: pWidth * 0.4,
                                child: Text(
                                  'should be paid on or before 28-Aug-2020',
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
                                '12.37',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontFamily: 'Roboto',
                                    fontSize: pHeight * 0.035,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: pHeight * 0.025,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                elevation: 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: pHeight * 0.02,
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: pWidth * 0.02,
                            ),
                            Image.asset(
                              'images/cash.png',
                              scale: 3,
                            ),
                            SizedBox(
                              width: pWidth * 0.02,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'TODAY\'S INCOME',
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: pHeight * 0.025,
                                      fontFamily: 'Roboto'),
                                ),
                                Container(
                                  width: pWidth * 0.4,
                                  child: Text(
                                    '31-Aug-2020',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.55),
                                        fontSize: pHeight * 0.018,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: SizedBox(
                            width: pWidth,
                            child: Divider(
                              color: Colors.black.withOpacity(0.15),
                              thickness: 1.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: pWidth * 0.2,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'ONLINE PAYMENT',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.02,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: pWidth * 0.2,
                                  ),
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.018,
                                        fontFamily: 'Roboto'),
                                  ),
                                  Text(
                                    '43.7',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: pWidth * 0.02,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: pHeight * 0.02,
                                    color: Colors.black.withOpacity(0.75),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 8.0),
                              child: SizedBox(
                                width: pWidth * 0.75,
                                child: Divider(
                                  color: Colors.black.withOpacity(0.15),
                                  thickness: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: pWidth * 0.2,
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    'CASH PAYMENT',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.02,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: pWidth * 0.235,
                                  ),
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.018,
                                        fontFamily: 'Roboto'),
                                  ),
                                  Text(
                                    '87.8',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.025,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Roboto'),
                                  ),
                                  SizedBox(
                                    width: pWidth * 0.02,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: pHeight * 0.02,
                                    color: Colors.black.withOpacity(0.75),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: pHeight * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Card(
                elevation: 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: pHeight * 0.02,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Image.asset(
                                'images/cash.png',
                                scale: 3,
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'TOTAL EARNING',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.025,
                                        fontFamily: 'Roboto'),
                                  ),
                                  Container(
                                    width: pWidth * 0.4,
                                    child: Text(
                                      'By Date / Month',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.55),
                                          fontSize: pHeight * 0.018,
                                          fontFamily: 'Roboto'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: pHeight * 0.025,
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 4.0),
                          child: SizedBox(
                            width: pWidth,
                            child: Divider(
                              color: Colors.black.withOpacity(0.15),
                              thickness: 1.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Image.asset(
                                'images/cash.png',
                                scale: 3,
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'SETTLEMENT / TRANSFERS',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.025,
                                        fontFamily: 'Roboto'),
                                  ),
                                  Container(
                                    width: pWidth * 0.4,
                                    child: Text(
                                      'By Date / Month',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.55),
                                          fontSize: pHeight * 0.018,
                                          fontFamily: 'Roboto'),
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                                size: pHeight * 0.025,
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: pHeight * 0.02,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: pHeight * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
