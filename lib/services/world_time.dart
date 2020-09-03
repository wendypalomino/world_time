import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // Location name for the UI
  String time; // Time in that location
  String flag; // Url to an asset flag icon
  String url; // Location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {

    try {
      // Make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      print(data);

      // Getting properties from Data

      String date = data['datetime'];
      String offset = data['utc_offset'].substring(0,3);
      //print(date);
      //print(offset);

      // Create DateTime object

      DateTime now = DateTime.parse(date);
      now = now.add(Duration(hours: int.parse(offset)));

      // Set the time property
      time = DateFormat.jm().format(now);
    }
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }
}

