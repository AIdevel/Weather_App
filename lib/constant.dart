import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
  color: Colors.white,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'f',
  fontSize: 50.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
);

const kButtonTextStyle = TextStyle(
    fontSize: 20.0,
    fontFamily: 'Spartan MB',
    color: Colors.white,
    fontWeight: FontWeight.w400);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
  color: Colors.white,
);
const kApiKey = 'b981f2e6b12a4351caf1378a843d8faf';

const kCardColor = Color(0xFF1D1E33);

const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    icon: Icon(
      Icons.location_city,
      color: Colors.white,
    ),
    hintStyle: TextStyle(color: Colors.grey),
    hintText: 'Enter City Name',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      borderSide: BorderSide.none,
    ));
