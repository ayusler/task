import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '3. data.dart';
import 'constant.dart';

class Time extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 140,
                child: DateStream()),
            SizedBox(height: 20,),

            Constants(
              function1: (){
                Navigator.pop(context);
              },
              function2: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Data()));
              },
              text1: "Page 1",
              text2: "Page 3",
            ),
          ],
        ),
      ),
    );
  }
}


class DateStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var date = DateTime.now();
    final dateStream = Stream<DateTime>.periodic(Duration(seconds: 1), (context) {
      return DateTime.now();
    });
    return StreamBuilder<DateTime>(
        stream: dateStream,
        builder: (context, snaps) {
          if (snaps.hasData) {
            return Container(
              height: 25,
              child: Text(
                DateFormat.jms().format(snaps.data),
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.red
                ),
              ),
            );
          } else {
            return Text("Loading");
          }
        });
  }
}



