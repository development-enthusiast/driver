import 'package:driverapp/Classes/Constants.dart';

import 'package:flutter/material.dart';

class DocumentsView extends StatefulWidget {
  @override
  _DocumentsViewState createState() => _DocumentsViewState();
}

class _DocumentsViewState extends State<DocumentsView> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kSecondaryColor,
        title: Text("Driver"),
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: pHeight * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 100),
            child: Container(
              child: RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset(
                    "images/camera.png",
                    fit: BoxFit.cover,
                    height: pHeight,
                    width: pWidth,
                  )),
            ),
          ),
          SizedBox(
            height: pHeight * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(85, 450, 20, 20),
            child: FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.cancel,
                color: Color(0xff0D3745),
              ),
              label: Container(
                child: Text(
                  'Waiting for Approval',
                  style: TextStyle(
                      color: Color(0xff282C41),
                      fontWeight: FontWeight.bold,
                      fontSize: pHeight * 0.020),
                ),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 570, 0, 10),
            child: SizedBox(
              width: pWidth * 0.85,
              height: pHeight * 0.070,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(
                    color: Color(0xff2A2E43),
                  ),
                ),
                onPressed: () {},
                color: Color(0xff2A2E43),
                child: Text(
                  "Remove",
                  style:
                      TextStyle(color: Colors.white, fontSize: pHeight * 0.035),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
