import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  File license;
  File badge;
  File regDoc;
  final picker = ImagePicker();

  Future getLicense() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      license = File(image.path);
    });
  }

  Future getBadge() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      badge = File(image.path);
    });
  }

  Future getRegDoc() async {
    var image = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      regDoc = File(image.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: pHeight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text(
            'Driver Documents',
            style: TextStyle(
              color: Colors.black.withOpacity(0.75),
              fontSize: pHeight * 0.025,
            ),
          ),
        ),
        SizedBox(
          height: pHeight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Card(
            elevation: 4,
            child: Container(
              height: pHeight * 0.15,
              width: pWidth,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Driving License',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.75),
                          fontSize: pHeight * 0.02,
                        ),
                      ),
                    ),
                    license == null
                        ? InkWell(
                            onTap: () {
                              getLicense();
                            },
                            child: Image.asset(
                              'images/camera.png',
                              height: pHeight * 0.12,
                              width: pWidth * 0.35,
                            ),
                          )
                        : Container(
                            height: pHeight * 0.12,
                            width: pWidth * 0.35,
                            child: Image.file(
                              license,
                              fit: BoxFit.cover,
                            ),
                          ),
                    SizedBox(
                      width: pWidth * 0.04,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF12A5D6),
                        ),
                        Text(
                          'Approved',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: pHeight * 0.02,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          child: Card(
            elevation: 4,
            child: Container(
              height: pHeight * 0.15,
              width: pWidth,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Badge',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.75),
                          fontSize: pHeight * 0.02,
                        ),
                      ),
                    ),
                    badge == null
                        ? InkWell(
                            onTap: () {
                              getBadge();
                            },
                            child: Image.asset(
                              'images/camera.png',
                              height: pHeight * 0.12,
                              width: pWidth * 0.35,
                            ),
                          )
                        : Container(
                            height: pHeight * 0.12,
                            width: pWidth * 0.35,
                            child: Image.file(
                              badge,
                              fit: BoxFit.cover,
                            ),
                          ),
                    SizedBox(
                      width: pWidth * 0.04,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF12A5D6),
                        ),
                        Text(
                          'Approved',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: pHeight * 0.02,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: pHeight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 32.0),
          child: Text(
            'Vehicle Documents',
            style: TextStyle(
              color: Colors.black.withOpacity(0.75),
              fontSize: pHeight * 0.025,
            ),
          ),
        ),
        SizedBox(
          height: pHeight * 0.01,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Card(
            elevation: 4,
            child: Container(
              height: pHeight * 0.15,
              width: pWidth,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Reg. Documents',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.75),
                          fontSize: pHeight * 0.02,
                        ),
                      ),
                    ),
                    regDoc == null
                        ? InkWell(
                            onTap: () {
                              getRegDoc();
                            },
                            child: Image.asset(
                              'images/camera.png',
                              height: pHeight * 0.12,
                              width: pWidth * 0.35,
                            ),
                          )
                        : Container(
                            height: pHeight * 0.12,
                            width: pWidth * 0.35,
                            child: Image.file(
                              regDoc,
                              fit: BoxFit.cover,
                            ),
                          ),
                    SizedBox(
                      width: pWidth * 0.04,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Color(0xFF12A5D6),
                        ),
                        Text(
                          'Approved',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.75),
                            fontSize: pHeight * 0.02,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
