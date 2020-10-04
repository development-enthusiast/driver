import 'package:driverapp/Classes/Constants.dart';
import 'package:flutter/material.dart';
import 'CustomRadio.dart';
import 'UploadDocuments.dart';

class VehicleDetails extends StatefulWidget {
  @override
  _VehicleDetailsState createState() => _VehicleDetailsState();
}

class _VehicleDetailsState extends State<VehicleDetails> {
  TextEditingController vehiclecolor = new TextEditingController(text: '');
  TextEditingController registrationno = new TextEditingController(text: '');
  String _serviceval;
  // int _value = 0;
  List _serviceType = [
    'UberX',
    'UberXL',
    'UberSELECT',
    'UberBLACK',
    'UberSUV',
  ];
  String _vehval;
  List _vehMake = [
    'example',
  ];
  String _modelval;
  List _vehModel = [
    'example',
  ];
  @override
  Widget build(BuildContext context) {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kSecondaryColor,
        title: Text("Vehicle Details"),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: pHeight * 0.06,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Service type*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.055,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Color(0xff282C41),
                      ),
                    ),
                    child: DropdownButton(
                      hint: Center(child: Text('Select type')),
                      dropdownColor: Colors.grey,
                      elevation: 5,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      value: _serviceval,
                      onChanged: (value) {
                        setState(() {
                          _serviceval = value;
                        });
                      },
                      items: _serviceType.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Center(child: Text(value)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.00,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Enter Veh. make*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.055,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Color(0xff282C41),
                      ),
                    ),
                    child: DropdownButton(
                      hint: Center(child: Text('Select Veh. make')),
                      dropdownColor: Colors.grey,
                      elevation: 5,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      value: _vehval,
                      onChanged: (value) {
                        setState(() {
                          _vehval = value;
                        });
                      },
                      items: _vehMake.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Center(child: Text(value)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.00,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Enter Veh. model*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.055,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Color(0xff282C41),
                      ),
                    ),
                    child: DropdownButton(
                      hint: Center(child: Text('Select Model')),
                      dropdownColor: Colors.grey,
                      elevation: 5,
                      icon: Icon(Icons.arrow_drop_down),
                      iconSize: 36.0,
                      isExpanded: true,
                      value: _modelval,
                      onChanged: (value) {
                        setState(() {
                          _modelval = value;
                        });
                      },
                      items: _vehModel.map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Center(child: Text(value)),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.00,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Vehicle color*'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.055,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Color(0xff282C41),
                      ),
                    ),
                    child: TextFormField(
                      controller: vehiclecolor,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.00,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text('Registration no. *'),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Center(
                  child: Container(
                    width: pWidth * 0.85,
                    height: pHeight * 0.055,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Color(0xff282C41),
                      ),
                    ),
                    child: TextFormField(
                      controller: registrationno,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 0, 0),
                  child: Text(
                    'Select Add ons available ',
                    style: TextStyle(
                        color: Color(0xff282C41),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: pHeight * 0.00,
                ),
                CustomRadio(),
                SizedBox(
                  height: pHeight * 0.04,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UploadDocuments(),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: Container(
                        width: pWidth * 0.85,
                        height: pHeight * 0.065,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color(0xff282C41),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: pHeight * 0.035),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
