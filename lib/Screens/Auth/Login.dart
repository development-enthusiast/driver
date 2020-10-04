import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Screens/Auth/OTPScreen.dart';
import 'package:driverapp/Screens/Auth/SignUp.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phone = new TextEditingController(text: '');
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
                height: pHeight * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome To',
                    style: TextStyle(
                        color: Colors.black, fontSize: pHeight * 0.035),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: pWidth,
                    child: Text(
                      'The best way to navigate and discover new places.\nLet\'s get started!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.65),
                          fontSize: pHeight * 0.02),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: pWidth,
                    child: Text(
                      'CONTINUE WITH MOBILE',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.75),
                          fontSize: pHeight * 0.02),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: pHeight * 0.01,
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
                          hintStyle: TextStyle(fontSize: pHeight * 0.025),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: pHeight * 0.01,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OTPScreen(),
                    ),
                  );
                },
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
                        'LOGIN',
                        style: TextStyle(
                            color: Colors.white, fontSize: pHeight * 0.025),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: pHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Don\'t have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.75),
                        fontSize: pHeight * 0.018),
                  ),
                  SizedBox(
                    width: pWidth * 0.01,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.75),
                          fontSize: pHeight * 0.02),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
