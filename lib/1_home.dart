import 'package:flutter/material.dart';
import 'package:task/2_time.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text(
              "+",
              style: TextStyle(fontSize: 20),
            ),
            onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Time()));
            },
          ),
        ),
      ),
    );
  }
}
