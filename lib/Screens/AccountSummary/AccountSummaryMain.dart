import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Screens/AccountSummary/SettlementDue.dart';
import 'package:driverapp/Screens/AccountSummary/TotalIncome.dart';
import 'package:driverapp/Screens/AccountSummary/TransferScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'CommissionDue.dart';
import 'SettlementDue.dart';
import 'TotalIncome.dart';

class AccountSummaryMain extends StatefulWidget {
  @override
  _AccountSummaryMainState createState() => _AccountSummaryMainState();
}

class _AccountSummaryMainState extends State<AccountSummaryMain> {
  List<PieChartSectionData> _section = List<PieChartSectionData>();

  @override
  void initState() {
    PieChartSectionData _item1 = PieChartSectionData(
      color: Colors.green,
      value: 60,
      title: "\$ 131.5",
      titleStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      radius: 60,
    );
    PieChartSectionData _item2 = PieChartSectionData(
      color: Colors.redAccent,
      value: 40,
      title: "\$ 12.15",
      titleStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      radius: 60,
    );
    _section = [_item1, _item2];
    super.initState();
  }

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        centerTitle: true,
        title: Text(
          'Account Summary',
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Select Period',
                    ),
                    Container(
                      width: pWidth * 0.2,
                      child: DropdownButton(
                          value: _value,
                          items: [
                            DropdownMenuItem(
                              child: Text('Today'),
                              value: 1,
                            ),
                            DropdownMenuItem(
                              child: Text('Today'),
                              value: 2,
                            ),
                            DropdownMenuItem(
                              child: Text('Today'),
                              value: 3,
                            ),
                          ],
                          onChanged: (value) {
                            setState(() {
                              _value = value;
                            });
                          }),
                    ),
                    Container(
                      height: pHeight * 0.12,
                      width: pWidth * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: pWidth * 0.1,
                                height: pHeight * 0.02,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Text(
                                'Profit',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: pHeight * 0.01,
                          ),
                          Row(
                            children: [
                              Container(
                                width: pWidth * 0.1,
                                height: pHeight * 0.02,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              SizedBox(
                                width: pWidth * 0.02,
                              ),
                              Text(
                                'Commission ',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(pWidth * 0.01),
                    width: pHeight / 4,
                    height: pHeight / 4,
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: PieChart(
                        PieChartData(
                          sectionsSpace: 3,
                          sections: _section,
                          borderData: FlBorderData(show: false),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(TotalIncome.routeName);
              },
              child: Padding(
                padding: EdgeInsets.all(pWidth * 0.01),
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: pHeight * 0.135,
                    child: Padding(
                      padding: EdgeInsets.all(pWidth * 0.01),
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
                                'TOTAL',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: pHeight * 0.025,
                                ),
                              ),
                              Text(
                                'for the month till today',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.55),
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
                                '123.72',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: pHeight * 0.035,
                                  fontWeight: FontWeight.bold,
                                ),
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
                Navigator.of(context).pushNamed(SettlementDue.routeName);
              },
              child: Padding(
                padding: EdgeInsets.all(pWidth * 0.01),
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: pHeight * 0.135,
                    child: Padding(
                      padding: EdgeInsets.all(pWidth * 0.01),
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
                                  fontSize: pHeight * 0.025,
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
                Navigator.of(context).pushNamed(CommissionDue.routeName);
              },
              child: Padding(
                padding: EdgeInsets.all(pWidth * 0.01),
                child: Card(
                  elevation: 4,
                  child: Container(
                    height: pHeight * 0.135,
                    child: Padding(
                      padding: EdgeInsets.all(pWidth * 0.01),
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
                                  fontSize: pHeight * 0.025,
                                ),
                              ),
                              Container(
                                width: pWidth * 0.4,
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
                                '12.37',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
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
              padding: EdgeInsets.all(pWidth * 0.01),
              child: Card(
                elevation: 4,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.all(pWidth * 0.01),
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
                                  'TODAY\'S INCOME',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: pHeight * 0.025,
                                  ),
                                ),
                                Container(
                                  width: pWidth * 0.4,
                                  child: Text(
                                    '31-Aug-2020',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.55),
                                    ),
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
                                    'ONLINE PAYMENT',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                    ),
                                  ),
                                  SizedBox(
                                    width: pWidth * 0.3,
                                  ),
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: pHeight * 0.018,
                                    ),
                                  ),
                                  Text(
                                    '43.7',
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
                                    'CASH PAYMENT',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                    ),
                                  ),
                                  SizedBox(
                                    width: pWidth * 0.33,
                                  ),
                                  Text(
                                    '\$ ',
                                    style: TextStyle(
                                      color: Colors.black.withOpacity(0.8),
                                      fontSize: pHeight * 0.018,
                                    ),
                                  ),
                                  Text(
                                    '87.8',
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(TransferScreen.routeName);
                },
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
                                      'SETTLEMENT/TRANSFERS',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.025,
                                      ),
                                    ),
                                    Container(
                                      width: pWidth * 0.4,
                                      child: Text(
                                        'By Date / Month',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.55),
                                          fontSize: pHeight * 0.018,
                                        ),
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
                                      'TOTAL EARNING',
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: pHeight * 0.025,
                                      ),
                                    ),
                                    Container(
                                      width: pWidth * 0.4,
                                      child: Text(
                                        'By Date / Month',
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.55),
                                          fontSize: pHeight * 0.018,
                                        ),
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
