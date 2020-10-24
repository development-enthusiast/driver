import 'package:driverapp/Screens/Home/Home.dart';
import 'package:driverapp/Screens/Profile.dart';
import 'package:driverapp/utilities/size_config.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class DocumentsSubmit extends StatefulWidget {
  @override
  _DocumentsSubmitState createState() => _DocumentsSubmitState();
}

class _DocumentsSubmitState extends State<DocumentsSubmit> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: pHeight * 0.0,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.deviceWidth * 40,
                  ),
                  child: Image.asset(
                    "images/check.png",
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.deviceWidth * 20,
                ),
                child: Text(
                  "Your Details and Documents  \n     submitted successfully",
                  style: TextStyle(fontSize: pHeight * 0.030),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.deviceWidth * 30,
                ),
                child: Text(
                  "Please wait for your document approval\n                    before taking ride.",
                  style: TextStyle(fontSize: pHeight * 0.025),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.deviceWidth * 7,
                ),
                child: Text(
                  "Thank you for waiting.",
                  style: TextStyle(
                      fontSize: pHeight * 0.025, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.deviceHeight * 5),
                  child: SizedBox(
                    width: SizeConfig.deviceWidth * 24,
                    height: SizeConfig.deviceHeight * 7,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
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
                            fontSize: pHeight * 0.025),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
