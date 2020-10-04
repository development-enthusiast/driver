import 'package:driverapp/utilities/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  List<IconData> iconList = [
    Icons.cancel,
    Icons.shopping_cart,
    Icons.directions_walk,
  ];
  int secondaryIndex = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.deviceWidth * 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  "images/none.png",
                  height: SizeConfig.deviceHeight * 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.deviceWidth * 0.01),
                  child: Text('No Add ons'),
                ),
                Image.asset(
                  "images/wheel.png",
                  height: SizeConfig.deviceHeight * 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.deviceWidth * 0.01),
                  child: Text('Wheel Chair'),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.deviceWidth * 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // customRadio2(iconList[0], 0),
                // customRadio2(iconList[1], 1),
                Image.asset(
                  "images/walkhelp.png",
                  height: SizeConfig.deviceHeight * 8,
                ),
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.deviceWidth * 1),
                    child: Text(
                      'Walking Stick ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }

  void changeSecondaryIndex(int index) {
    setState(() {
      secondaryIndex = index;
    });
  }

  Widget customRadio2(IconData icon, int index) {
    return OutlineButton(
      onPressed: () => changeSecondaryIndex(index),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
      borderSide: BorderSide(
          color: secondaryIndex == index
              ? Colors.deepOrangeAccent[700]
              : Colors.grey),
      child: Icon(
        icon,
        color: secondaryIndex == index ? Colors.deepOrangeAccent : Colors.grey,
      ),
    );
  }
}
