import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  String lati="", longi="";

  void _getCurrentLocation() async {
    
   final position = await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);  

      print(lati);
      print(longi);

    setState(() {
      lati = "Latitude is" + position.latitude.toString();
      longi = "Longitude is" + position.longitude.toString();
    });
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Welcome To Home'),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlineButton(
                child: Text('Get Location'),
                onPressed: () {
                  _getCurrentLocation();
                },
              ),
              Text(" $lati" + "\n" + "$longi"),

            ],
          ),
        ),
      ),
    );
  }
}
