import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController phone = new TextEditingController(text: '');
  TextEditingController name = new TextEditingController(text: '');
  TextEditingController email = new TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: pHeight,
              width: pWidth,
              child: Image.asset(
                'images/Background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: pHeight * 0.06,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: pHeight * 0.035),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: pWidth,
                    child: Text(
                      'Enter your Sign Up details !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.65),
                          fontFamily: 'Roboto',
                          fontSize: pHeight * 0.02),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.12,
              ),
              Container(
                width: pWidth * 0.85,
                height: pHeight * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Color(0xFFACCBCF),
                  ),
                ),
                child: TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    fillColor: kFormColor,
                    filled: true,
                    hintText: 'Enter your name',
                    hintStyle: TextStyle(
                        fontFamily: 'Roboto', fontSize: pHeight * 0.025),
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.04,
              ),
              Container(
                width: pWidth * 0.85,
                height: pHeight * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(
                    color: Color(0xFFACCBCF),
                  ),
                ),
                child: TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    fillColor: kFormColor,
                    filled: true,
                    hintText: 'Enter Email',
                    hintStyle: TextStyle(
                        fontFamily: 'Roboto', fontSize: pHeight * 0.025),
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: pWidth * 0.15,
                      height: pHeight * 0.065,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(
                            color: Color(0xFFACCBCF),
                          ),
                          color: kFormColor),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            '+91',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.65),
                                fontFamily: 'Roboto',
                                fontSize: pHeight * 0.025),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: pWidth * 0.05,
                    ),
                    Container(
                      width: pWidth * 0.65,
                      height: pHeight * 0.065,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Color(0xFFACCBCF),
                        ),
                      ),
                      child: TextFormField(
                        controller: phone,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(14),
                          ),
                          fillColor: kFormColor,
                          filled: true,
                          hintText: 'Mobile Number',
                          hintStyle: TextStyle(
                              fontFamily: 'Roboto', fontSize: pHeight * 0.025),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                child: Container(
                  width: pWidth * 0.85,
                  height: pHeight * 0.065,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: kPrimaryColor),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'VERIFY',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Roboto',
                            fontSize: pHeight * 0.025),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.1,
              ),
            ],
          )
        ],
      ),
    );
  }
}
