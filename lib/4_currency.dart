import 'package:flutter/material.dart';
import 'package:task/1_home.dart';
import 'package:task/3_data.dart';
import 'constant.dart';

class Currency extends StatefulWidget {
  @override
  _CurrencyState createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  // https://free.currconv.com/api/v7/convert?q=CRC_INR&compact=ultra&apiKey=dd8e835c3d0a875afe5e   Api not working
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Given Api was not working"),
          SizedBox(height: 20,),
          Constants(
            function1: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            function2: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Data()));
            },
            text1: "Page 1",
            text2: "Page 3",
          ),
        ],
      )
    );
  }
}
