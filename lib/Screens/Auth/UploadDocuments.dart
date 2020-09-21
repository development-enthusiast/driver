import 'package:driverapp/Screens/Auth/DocumentsSubmit.dart';
import 'package:driverapp/Screens/Auth/DocumentsView.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class UploadDocuments extends StatefulWidget {
  @override
  _UploadDocumentsState createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Hexcolor("#2A2E43"),
        title: Text("Upload Documents"),
      ),
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          SizedBox(
            height: pHeight * 0.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Driver Documents',
                  style: TextStyle(
                      color: Hexcolor("#3C3B5C"),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: pHeight * 0.030),
                ),
              ),
            ],
          ),
          SizedBox(
            height: pHeight * 0.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 80, 50, 80),
                child: Text(
                  'Driver Licence',
                  style: TextStyle(
                      color: Hexcolor("#282C41"),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: pHeight * 0.025),
                ),
              ),
              Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                    FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.cancel,
                        color: Hexcolor("#0D3745"),
                      ),
                      label: Container(
                        child: Text(
                          'Waiting for Approval',
                          style: TextStyle(
                              color: Hexcolor("#282C41"),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: pHeight * 0.015),
                        ),
                      ),
                    ),
                  ])),
            ],
          ),
          SizedBox(
            height: pHeight * 0.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 110, 50, 50),
                          child: IconButton(
                            icon: Image.asset('images/camera.png'),
                            iconSize: 70,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DocumentsView(),
                                ),
                              );
                            },
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(82, 100, 0, 35),
                    child: IconButton(
                      icon: Icon(Icons.cancel),
                      color: Hexcolor("#EE2929"),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(100, 105, 0, 35),
                    child: IconButton(
                      icon: Image.asset('images/group.png'),
                      iconSize: 80,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 200, 0, 0),
                    child: Container(
                      height: 1.0,
                      width: 330.0,
                      color: Hexcolor("#707070"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 210, 20, 20),
                    child: Text(
                      'Driver Badge',
                      style: TextStyle(
                          color: Hexcolor("#282C41"),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: pHeight * 0.025),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(210, 200, 10, 20),
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.cancel,
                            color: Hexcolor("#0D3745"),
                          ),
                          label: Container(
                            child: Text(
                              'Waiting for Approval',
                              style: TextStyle(
                                  color: Hexcolor("#282C41"),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: pHeight * 0.015),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 240, 20, 20),
                          child: IconButton(
                            icon: Image.asset('images/camera.png'),
                            iconSize: 70,
                            onPressed: () {},
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(82, 230, 0, 50),
                    child: IconButton(
                      icon: Icon(Icons.cancel),
                      color: Hexcolor("#EE2929"),
                      onPressed: () {},
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 240, 20, 20),
                          child: IconButton(
                            icon: Image.asset('images/group.png'),
                            iconSize: 70,
                            onPressed: () {},
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: pHeight * 0.0,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 340, 0, 0),
                    child: Container(
                      height: 2.0,
                      width: pWidth,
                      color: Hexcolor("#707070"),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 370, 25, 25),
                        child: Text(
                          'Vehicle Documents',
                          style: TextStyle(
                              color: Hexcolor("#3C3B5C"),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: pHeight * 0.030),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 423, 20, 20),
                        child: Text(
                          'Reg. document',
                          style: TextStyle(
                              color: Hexcolor("#282C41"),
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.bold,
                              fontSize: pHeight * 0.025),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(210, 410, 10, 20),
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.cancel,
                            color: Hexcolor("#0D3745"),
                          ),
                          label: Container(
                            child: Text(
                              'Waiting for Approval',
                              style: TextStyle(
                                  color: Hexcolor("#282C41"),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: pHeight * 0.015),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 455, 20, 20),
                          child: IconButton(
                            icon: Image.asset('images/group.png'),
                            iconSize: 70,
                            onPressed: () {},
                          ),
                        ),
                      ]),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 547, 0, 0),
                    child: Container(
                      height: 1.0,
                      width: 330.0,
                      color: Hexcolor("#707070"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 570, 20, 20),
                    child: Text(
                      'Insurance',
                      style: TextStyle(
                          color: Hexcolor("#282C41"),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: pHeight * 0.025),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(210, 555, 10, 20),
                        child: FlatButton.icon(
                          onPressed: null,
                          icon: Icon(
                            Icons.cancel,
                            color: Hexcolor("#0D3745"),
                          ),
                          label: Container(
                            child: Text(
                              'Waiting for Approval',
                              style: TextStyle(
                                  color: Hexcolor("#282C41"),
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: pHeight * 0.015),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(25, 600, 20, 20),
                          child: IconButton(
                            icon: Image.asset('images/camera.png'),
                            iconSize: 70,
                            onPressed: () {},
                          ),
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(82, 590, 0, 30),
                    child: IconButton(
                      icon: Icon(Icons.cancel),
                      color: Hexcolor("#EE2929"),
                      onPressed: () {},
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 600, 20, 20),
                          child: IconButton(
                            icon: Image.asset('images/group.png'),
                            iconSize: 70,
                            onPressed: () {},
                          ),
                        ),
                      ]),
                ]),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 700, 0, 20),
            child: SizedBox(
              width: pWidth * 0.85,
              height: pHeight * 0.065,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Colors.red)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DocumentsSubmit(),
                    ),
                  );
                },
                color: Hexcolor("#F41C7B"),
                // textColor: Colors.white,
                child: Text(
                  "Submit",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: pHeight * 0.035),
                ),
              ),
            ),
          )),
        ]),
      ),
    );
  }
}
