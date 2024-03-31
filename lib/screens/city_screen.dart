import 'package:flutter/material.dart';
import 'package:weather_app/constant.dart';
import 'package:weather_app/screens/location_screen.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
            color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/city_background.jpg'),
                fit: BoxFit.cover)),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                onChanged: (value) {
                  cityName = value;
                },
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    hintText: 'Enter City Name',
                    hintStyle: TextStyle(
                        color: Colors.lightBlue[100],
                        fontWeight: FontWeight.w300),
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: Icon(
                      Icons.location_city,
                      color: Colors.lightBlue,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.lightBlue,
                    )),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              ),
              onPressed: () {
                Navigator.pop(context, cityName);
              },
              child: Text(
                'Get Weather',
                style: kButtonTextStyle,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

//////////////// for Ui //////////////////
//       SafeArea(
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Expanded(
//                 child: Container(
//                   padding: EdgeInsets.all(10.0),
//                   decoration: BoxDecoration(
//                     color: kCardColor,
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Text(
//                     'Get Location',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 30.0,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
// }
