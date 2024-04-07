import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Future<Position> _getCurrentLocation() {
    return Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Position>(
        future: _getCurrentLocation(),
        builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Text(
                  'Location: ${snapshot.data?.latitude}, ${snapshot.data?.longitude}'),
            );
          } else if (snapshot.hasError) {
            return Text("Error: ${snapshot.error}");
          }
          // While data is loading:
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
