import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;


class MobxClass{

  Observable dataList = Observable([]);
  Action addToList;

  MobxClass (){
    addToList = Action(getData);
  }

   Future getData()async{
    http.Response response = await http.get("https://randomapi.com/api/6de6abfedb24f889e0b5f675edc50deb?fmt=raw&sole");
    var decodedData = jsonDecode(response.body);
    for (int x = 0; x<=decodedData.length-1; x++){
      dataList.value.add(<String, String>{
        "first": decodedData[x]["first"],
        "last": decodedData[x]["last"],
      });
    }
  }
}