import 'package:geolocator/geolocator.dart';

void getCurrentLocation() async {
  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
  double lat = position.latitude;
  double long = position.longitude;
  print("Latitude: $lat and Longitude: $long");
}
