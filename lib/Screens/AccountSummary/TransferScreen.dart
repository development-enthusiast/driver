import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  static const routeName = 'TransferScreen';
  @override
  Widget build(BuildContext context) {
    final pWidth = MediaQuery.of(context).size.width;
    final pHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 0,
        bottomOpacity: 0,
        centerTitle: true,
        title: Text(
          'Settlement/Transfer',
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
      body: Column(
        children: [
          Container(
            width: pWidth,
            height: pHeight * 0.04,
            color: kSecondaryColor,
            padding: EdgeInsets.symmetric(horizontal: pWidth * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
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
                Container(
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
                )
              ],
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
                            'COMMISSION DUE',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: pHeight * 0.02,
                            ),
                          ),
                          Container(
                            width: pWidth * 0.4,
                            child: Text(
                              'Paid in Aug 23, 2020',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.55),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'images/check.png',
                        height: pHeight * 0.05,
                        width: pHeight * 0.05,
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
                            'SETTLEMENT DUE',
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: pHeight * 0.02,
                            ),
                          ),
                          Container(
                            width: pWidth * 0.4,
                            child: Text(
                              'Received on 17 Aug 2020',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.55),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset(
                        'images/check.png',
                        height: pHeight * 0.05,
                        width: pHeight * 0.05,
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
        ],
      ),
    );
  }
}
