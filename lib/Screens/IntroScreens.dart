import 'package:driverapp/Classes/Constants.dart';
import 'package:driverapp/Screens/Auth/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class IntroScreens extends StatefulWidget {
  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  List<Slide> slides = new List();
  Function goToTab;

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = new List();
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'images/Background.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(bottom: 100.0, top: 100.0),
                  child: ListView(
                    children: <Widget>[
                      GestureDetector(
                        child: Image.asset(
                          currentSlide.pathImage,
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.4,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        child: Text(
                          currentSlide.title,
                          style: currentSlide.styleTitle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
                        child: Container(
                          child: Text(
                            currentSlide.description,
                            style: currentSlide.styleDescription,
                            textAlign: TextAlign.center,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          ),
                          margin: EdgeInsets.only(top: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ));
    }
    return tabs;
  }

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
          title: "Book Cabs Online",
          backgroundImage: 'images/background.jpg',
          backgroundImageFit: BoxFit.cover,
          backgroundColor: Colors.white,
          styleTitle: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'),
          description:
              "You can find the required Cabs near you and travel to your favourite destination.",
          styleDescription: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 20.0,
              fontFamily: 'Roboto'),
          pathImage: "images/intro1.png",
          heightImage: 250,
          widthImage: 250),
    );
    slides.add(
      new Slide(
          title: "Tours and Packages",
          backgroundImage: 'images/background.jpg',
          backgroundImageFit: BoxFit.cover,
          backgroundColor: Colors.white,
          styleTitle: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'),
          description:
              "Find your favourite travel spots.\nSelect the packages you need and get offers.",
          styleDescription: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 20.0,
              fontFamily: 'Roboto'),
          pathImage: "images/intro2.png",
          heightImage: 250,
          widthImage: 250),
    );
    slides.add(
      new Slide(
          title: "Rewards and Earnings",
          backgroundImage: 'images/background.jpg',
          backgroundImageFit: BoxFit.cover,
          backgroundColor: Colors.white,
          styleTitle: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'),
          description:
              "Make referral asset by referring your friends,\nEarn for each trip made by all your assets.\nDevelop your business by promoting.",
          styleDescription: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 20.0,
              fontFamily: 'Roboto'),
          pathImage: "images/intro3.png",
          heightImage: 250,
          widthImage: 250),
    );
    slides.add(
      new Slide(
          title: "Business",
          backgroundImage: 'images/background.jpg',
          backgroundImageFit: BoxFit.cover,
          backgroundColor: Colors.white,
          styleTitle: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto'),
          description:
              "Create your own business profiles to sell your products and search to buy the product you need.",
          styleDescription: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 20.0,
              fontFamily: 'Roboto'),
          pathImage: "images/intro4.png",
          heightImage: 250,
          widthImage: 250),
    );
  }

  void onDonePress() {
    Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (context) => Login(),
      ),
    );
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: kPrimaryColor,
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xffffcc5c),
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xffffcc5c),
    );
  }

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
      listCustomTabs: this.renderListCustomTabs(),
      colorDot: Colors.black.withOpacity(0.5),
      colorActiveDot: kPrimaryColor,
      styleNameSkipBtn: TextStyle(
          color: kPrimaryColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: pHeight * 0.02),
      styleNameDoneBtn: TextStyle(
          color: kPrimaryColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: pHeight * 0.02),
      styleNamePrevBtn: TextStyle(
          color: kPrimaryColor,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.bold,
          fontSize: pHeight * 0.02),
    );
  }
}
