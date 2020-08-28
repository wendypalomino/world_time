import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    // Simulate a network request for a username from an API
    await Future.delayed(Duration(seconds: 3), () {
      print('Vane');
    });

    await Future.delayed(Duration(seconds: 2), () {
      print('bla bla bla bla');
    });

    print('statement');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print('Build run');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: RaisedButton(
        onPressed: (){
         setState(() {
           counter ++;
         });
        },
        child: Text('Counter is $counter'),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0.0,

      ),
    );
  }
}
