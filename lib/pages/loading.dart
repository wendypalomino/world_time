import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time ='loading';

  void setupWorldTime() async {
    WorldTime instance = WorldTime(location: 'Merida', flag: 'Mexico.png', url: 'America/Merida');
    await instance.getTime();
    // Doing this we are giving access to /home to get these three properties.
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location' : instance.location,
      'flag' : instance.flag,
      'time' : instance.time,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Text('loading'),
      ),
    );
  }
}
