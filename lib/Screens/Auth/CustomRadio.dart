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
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              customRadio2(iconList[0], 0),
              Text('No Add ons'),
              customRadio2(iconList[1], 1),
              Text('Wheel Chair'),
              // customRadio2(iconList[2], 2),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // customRadio2(iconList[0], 0),
                // customRadio2(iconList[1], 1),
                customRadio2(iconList[2], 2),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Text('Walking Stick '),
                ),
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
