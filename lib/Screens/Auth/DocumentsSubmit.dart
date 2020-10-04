import 'package:driverapp/Screens/Home/Home.dart';
import 'package:driverapp/Screens/Profile.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class DocumentsSubmit extends StatefulWidget {
  @override
  _DocumentsSubmitState createState() => _DocumentsSubmitState();
}

class _DocumentsSubmitState extends State<DocumentsSubmit> {
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: pHeight * 0.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 170, 10, 0),
                child: Image.asset(
                  "images/check.png",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 90, 10, 0),
              child: Text(
                "Your Details and Documents  \n     submitted successfully",
                style: TextStyle(fontSize: pHeight * 0.030),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
              child: Text(
                "Please wait for your document approval\n                    before taking ride.",
                style: TextStyle(fontSize: pHeight * 0.025),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: Text(
                "Thank you for waiting.",
                style: TextStyle(
                    fontSize: pHeight * 0.030, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: SizedBox(
                width: pWidth * 0.30,
                height: pHeight * 0.045,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(
                        color: Hexcolor("#F41C7B"),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  color: Hexcolor("#F41C7B"),
                  child: Text(
                    "OK",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Roboto',
                        fontSize: pHeight * 0.035),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
