import 'package:flutter/material.dart';

class Constants extends StatelessWidget {
  final String text1;
  final String text2;
  final Function function1;
  final Function function2;

  const Constants({Key key, @required this.text1, @required this.text2, @required this.function1, @required this.function2}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(onPressed: function1,
          child: Row(
            children: [
              Icon(Icons.arrow_back),
              Text(text1),
            ],
          ),
        ),

        SizedBox(width: 20,),
        RaisedButton(onPressed:
         function2,

          child: Row(
            children: [
              Icon(Icons.arrow_forward),
              Text(text2),
            ],
          ),),
      ],
    );
  }
}
