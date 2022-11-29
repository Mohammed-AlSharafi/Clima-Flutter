import 'package:geolocator/geolocator.dart';
import 'package:clima/get_permissions.dart';

class Location {
  double latitude;
  double longitude;
  Future<void> getCurrentPosition() async {
    try{
      Future checkPermission = await GetPermissions().getLocationPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      longitude = position.longitude;
      latitude = position.latitude;
    }
    catch(e){
      print(e);
    }
  }
}