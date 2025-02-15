import 'map_widget.dart';

abstract class AppLocation {
 Future<AppLatLong> getCurrentLocation();

 Future<bool> requestPermission();

 Future<bool> checkPermission();
}

