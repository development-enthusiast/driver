import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'VehicleDetails.dart';

class DriverDetails extends StatefulWidget {
  @override
  _DriverDetailsState createState() => _DriverDetailsState();
}

class _DriverDetailsState extends State<DriverDetails> {
  TextEditingController phone = new TextEditingController(text: '');
  TextEditingController firstname = new TextEditingController(text: '');
  TextEditingController lastname = new TextEditingController(text: '');
  TextEditingController email = new TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Hexcolor("#2A2E43"),
        title: Text("Personal Details"),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: pHeight * 0.10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('First name*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.065,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Hexcolor("#282C41"),
                      ),
                    ),
                    child: TextFormField(
                      controller: firstname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderRadius: BorderRadius.circular(1),
                        ),
                        // fillColor: kFormColor,
                        // filled: true,
                        hintText: 'Stephen',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto', fontSize: pHeight * 0.025),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Last name'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.065,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Hexcolor("#282C41"),
                      ),
                    ),
                    child: TextFormField(
                      controller: lastname,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderRadius: BorderRadius.circular(1),
                        ),
                        // fillColor: kFormColor,
                        // filled: true,
                        hintText: 'George',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto', fontSize: pHeight * 0.025),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Email ID*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.065,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Hexcolor("#282C41"),
                      ),
                    ),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderRadius: BorderRadius.circular(1),
                        ),
                        // fillColor: kFormColor,
                        // filled: true,
                        hintText: 'stephengeorge@gmail.com',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto', fontSize: pHeight * 0.025),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Mobile*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.065,
                    // decoration: BoxDecoration(
                    //   // borderRadius: BorderRadius.circular(14),
                    //   border: Border.all(
                    //     color: Hexcolor("#282C41"),
                    //   ),
                    // ),
                    child: TextFormField(
                      controller: phone,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          // borderRadius: BorderRadius.circular(1),
                        ),
                        // fillColor: kFormColor,
                        // filled: true,
                        hintText: '+91 9876543210',
                        hintStyle: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: pHeight * 0.025,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Center(
                    child: Text(
                        'Above details are used for Registration and is verified.',
                        style: TextStyle(color: Hexcolor("#B5B5B5"))),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.04,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VehicleDetails(),
                        ),
                      );
                    },
                    child: Container(
                      width: pWidth * 0.85,
                      height: pHeight * 0.065,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Hexcolor("#F41C7B")),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'next',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontSize: pHeight * 0.035),
                          ),
                        ),
                      ),
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
