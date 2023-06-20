import 'package:flutter_map_navigation/requests/mapbox_search.dart';
import 'package:intl/intl.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '../constants/restaurants.dart';

String getDropOffTime(num duration) {
  int minutes = (duration / 60).round();
  int seconds = (duration % 60).round();
  DateTime tripEndDateTime =
      DateTime.now().add(Duration(minutes: minutes, seconds: seconds));
  String dropOffTime = DateFormat.jm().format(tripEndDateTime);
  return dropOffTime;
}

LatLng getLatLngFromRestaurantData(int index) {
  return LatLng(double.parse(restaurants[index]['coordinates']['latitude']),
      double.parse(restaurants[index]['coordinates']['longitude']));
}
