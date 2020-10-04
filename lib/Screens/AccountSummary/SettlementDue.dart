import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';

class SettlementDue extends StatefulWidget {
  static const routeName = 'SettlementDue';
  @override
  _SettlementDueState createState() => _SettlementDueState();
}

class _SettlementDueState extends State<SettlementDue> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: Text(
          'Settlement Due',
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
          Padding(
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
                            'SETTLEMENT DUE',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: pHeight * 0.02,
                            ),
                          ),
                          Container(
                            width: pWidth * 0.4,
                            child: Text(
                              'Claim for payment from 17 Aug 2020',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.55),
                              ),
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
                                fontSize: pHeight * 0.02),
                          ),
                          Text(
                            '7.46',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: pHeight * 0.03,
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
          Padding(
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
                            'TOTAL ONLINE INCOME',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: pHeight * 0.02,
                            ),
                          ),
                          Container(
                            width: pWidth * 0.35,
                            child: Text(
                              'should be paid on or before 28-Aug-2020',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.55),
                              ),
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
                                fontSize: pHeight * 0.02),
                          ),
                          Text(
                            '775.74',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.8),
                                fontSize: pHeight * 0.03,
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
                                'DUE DEDUCTION',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: pHeight * 0.02,
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
                              width: pWidth * 0.1,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'ONLINE PAYMENT DUE',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.018,
                                  ),
                                ),
                                SizedBox(
                                  width: pWidth * 0.16,
                                ),
                                Text(
                                  '\$ ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.018,
                                  ),
                                ),
                                Text(
                                  '375.5',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                              width: pWidth * 0.1,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'CASH PAYMENT DUE',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.018,
                                  ),
                                ),
                                SizedBox(
                                  width: pWidth * 0.17,
                                ),
                                Text(
                                  '\$ ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.018,
                                  ),
                                ),
                                Text(
                                  '387.87',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                              width: pWidth * 0.1,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'TOTAL DUE DEDUCTION',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.018,
                                  ),
                                ),
                                SizedBox(
                                  width: pWidth * 0.12,
                                ),
                                Text(
                                  '\$ ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.018,
                                  ),
                                ),
                                Text(
                                  '763.37',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                    fontWeight: FontWeight.bold,
                                  ),
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
          Spacer(),
          Container(
            width: pWidth * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kButtonColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 5.0,
                    spreadRadius: 0.1),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Center(
                child: Text(
                  'CLAIM    \$7.46',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: pHeight * 0.03,
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
    );
  }
}
