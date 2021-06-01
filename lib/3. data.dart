import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:http/http.dart' as http;
import 'package:task/mobx_class.dart';

import 'constant.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {

  // List dataList = [];
  MobxClass mobxClass = MobxClass();

  // Future getData()async{
  //   http.Response response = await http.get("https://randomapi.com/api/6de6abfedb24f889e0b5f675edc50deb?fmt=raw&sole");
  //   var decodedData = jsonDecode(response.body);
  //   for (int x = 0; x<=decodedData.length-1; x++){
  //     dataList.add(<String, String>{
  //       "first": decodedData[x]["first"],
  //       "last": decodedData[x]["last"],
  //     });
  //     setState(() {
  //
  //     });
  //   }
  // }

get()async{
  await mobxClass.addToList.call();
  setState(() {

  });
}

  @override
  void initState() {
    super.initState();
    if (mounted){
      get();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Observer(
          builder: (context) =>
           Container(
            child: mobxClass.dataList.value.isEmpty ? Center(child: Text("Loading"))
                :
            Column(
              children: [
                Constants(
                  function1: (){
                    Navigator.pop(context);
                  },
                  function2: (){
                    // Navigator.push(context, route)
                  },
                  text1: "Page 2",
                  text2: "Page 4",
                ),

                Expanded(
                  child:
                    Observer(
                      builder: (context)
                      => ListView.builder(
                        shrinkWrap: true,
                          itemCount: mobxClass.dataList.value.length,
                          itemBuilder: (context, index){
                            return Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                                child: Row(
                                  children: [
                                    Text("Name: "),
                                    Text("${mobxClass.dataList.value[index]["first"]} ${mobxClass.dataList.value[index]["last"]} ")
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
