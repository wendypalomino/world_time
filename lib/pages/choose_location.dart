import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
 int counter;
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
