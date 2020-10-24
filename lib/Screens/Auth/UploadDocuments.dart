import 'package:driverapp/Screens/Auth/DocumentsSubmit.dart';
import 'package:driverapp/Screens/Auth/DocumentsView.dart';
import 'package:driverapp/utilities/size_config.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class UploadDocuments extends StatefulWidget {
  @override
  _UploadDocumentsState createState() => _UploadDocumentsState();
}

class _UploadDocumentsState extends State<UploadDocuments> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Hexcolor("#2A2E43"),
        title: Text("Upload Documents"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: SizeConfig.deviceHeight * 100,
          child: Stack(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.deviceWidth * 4,
                      top: SizeConfig.deviceHeight * 3),
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
            Padding(
              padding: EdgeInsets.only(
                  left: SizeConfig.deviceWidth * 5,
                  top: SizeConfig.deviceHeight * 10),
              child: Text(
                'Driver Licence',
                style: TextStyle(
                    color: Hexcolor("#282C41"),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: pHeight * 0.025),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.deviceWidth * 50,
                      top: SizeConfig.deviceHeight * 9),
                  child: FlatButton.icon(
                    onPressed: null,
                    icon: Icon(
                      Icons.cancel,
                      color: Hexcolor("#0D3745"),
                      size: SizeConfig.deviceHeight * 3,
                    ),
                    label: Container(
                      child: Text(
                        'Waiting for Approval',
                        style: TextStyle(
                            color: Hexcolor("#282C41"),
                            fontFamily: 'Roboto',
                            fontSize: pHeight * 0.016),
                      ),
                    ),
                  ),
                ),
              ],
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
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.deviceWidth * 3,
                                vertical: SizeConfig.deviceHeight * 14),
                            child: IconButton(
                              icon: Image.asset('images/camera.png'),
                              iconSize: SizeConfig.deviceWidth * 20,
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
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.deviceWidth * 20,
                          vertical: SizeConfig.deviceHeight * 13),
                      child: IconButton(
                        icon: Icon(Icons.cancel),
                        color: Hexcolor("#EE2929"),
                        iconSize: SizeConfig.deviceWidth * 6,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.deviceWidth * 28,
                          vertical: SizeConfig.deviceHeight * 14),
                      child: IconButton(
                        icon: Image.asset('images/group.png'),
                        iconSize: SizeConfig.deviceWidth * 20,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.deviceWidth * 5,
                          top: SizeConfig.deviceHeight * 27),
                      child: Container(
                        height: SizeConfig.deviceHeight * 0.1,
                        width: SizeConfig.deviceWidth * 84,
                        color: Hexcolor("#707070"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.deviceWidth * 5,
                          vertical: SizeConfig.deviceHeight * 28),
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
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              left: SizeConfig.deviceWidth * 50,
                              top: SizeConfig.deviceHeight * 27),
                          child: FlatButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.cancel,
                              color: Hexcolor("#0D3745"),
                              size: SizeConfig.deviceHeight * 3,
                            ),
                            label: Container(
                              child: Text(
                                'Waiting for Approval',
                                style: TextStyle(
                                    color: Hexcolor("#282C41"),
                                    fontFamily: 'Roboto',
                                    fontSize: pHeight * 0.016),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.deviceWidth * 3,
                                vertical: SizeConfig.deviceHeight * 32),
                            child: IconButton(
                              icon: Image.asset('images/camera.png'),
                              iconSize: SizeConfig.deviceWidth * 20,
                              onPressed: () {},
                            ),
                          ),
                        ]),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.deviceWidth * 20,
                          vertical: SizeConfig.deviceHeight * 31),
                      child: IconButton(
                        icon: Icon(Icons.cancel),
                        color: Hexcolor("#EE2929"),
                        iconSize: SizeConfig.deviceHeight * 3,
                        onPressed: () {},
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.deviceWidth * 28,
                                vertical: SizeConfig.deviceHeight * 32),
                            child: IconButton(
                              icon: Image.asset('images/group.png'),
                              iconSize: SizeConfig.deviceWidth * 20,
                              onPressed: () {},
                            ),
                          ),
                        ]),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.deviceHeight * 46),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: SizeConfig.deviceWidth * 4,
                              vertical: SizeConfig.deviceHeight * 48),
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
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.deviceWidth * 5,
                          top: SizeConfig.deviceHeight * 54),
                      child: Text(
                        'Reg. document',
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
                          padding: EdgeInsets.only(
                              left: SizeConfig.deviceWidth * 50,
                              top: SizeConfig.deviceHeight * 53),
                          child: FlatButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.cancel,
                              color: Hexcolor("#0D3745"),
                              size: SizeConfig.deviceHeight * 3,
                            ),
                            label: Container(
                              child: Text(
                                'Waiting for Approval',
                                style: TextStyle(
                                    color: Hexcolor("#282C41"),
                                    fontFamily: 'Roboto',
                                    fontSize: pHeight * 0.016),
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
                            padding: EdgeInsets.only(
                                left: SizeConfig.deviceWidth * 1,
                                top: SizeConfig.deviceHeight * 57),
                            child: IconButton(
                              icon: Image.asset('images/group.png'),
                              iconSize: SizeConfig.deviceWidth * 20,
                              onPressed: () {},
                            ),
                          ),
                        ]),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.deviceWidth * 5,
                          top: SizeConfig.deviceHeight * 70),
                      child: Container(
                        height: SizeConfig.deviceHeight * 0.1,
                        width: SizeConfig.deviceWidth * 84,
                        color: Hexcolor("#707070"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.deviceWidth * 5,
                          top: SizeConfig.deviceHeight * 72),
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
                          padding: EdgeInsets.only(
                              left: SizeConfig.deviceWidth * 50,
                              top: SizeConfig.deviceHeight * 71),
                          child: FlatButton.icon(
                            onPressed: null,
                            icon: Icon(
                              Icons.cancel,
                              color: Hexcolor("#0D3745"),
                              size: SizeConfig.deviceHeight * 3,
                            ),
                            label: Container(
                              child: Text(
                                'Waiting for Approval',
                                style: TextStyle(
                                    color: Hexcolor("#282C41"),
                                    fontFamily: 'Roboto',
                                    fontSize: pHeight * 0.016),
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
                            padding: EdgeInsets.only(
                                left: SizeConfig.deviceWidth * 3,
                                top: SizeConfig.deviceHeight * 76),
                            child: IconButton(
                              icon: Image.asset('images/camera.png'),
                              iconSize: SizeConfig.deviceWidth * 20,
                              onPressed: () {},
                            ),
                          ),
                        ]),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.deviceWidth * 20,
                          top: SizeConfig.deviceHeight * 75),
                      child: IconButton(
                        icon: Icon(Icons.cancel),
                        color: Hexcolor("#EE2929"),
                        iconSize: SizeConfig.deviceHeight * 3,
                        onPressed: () {},
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: SizeConfig.deviceWidth * 28,
                                top: SizeConfig.deviceHeight * 76),
                            child: IconButton(
                              icon: Image.asset('images/group.png'),
                              iconSize: SizeConfig.deviceWidth * 20,
                              onPressed: () {},
                            ),
                          ),
                        ]),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.deviceHeight * 90,
                  left: SizeConfig.deviceWidth * 5,
                  bottom: SizeConfig.deviceHeight * 3),
              child: SizedBox(
                width: pWidth * 0.90,
                height: pHeight * 0.077,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
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
                        fontSize: pHeight * 0.032),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
