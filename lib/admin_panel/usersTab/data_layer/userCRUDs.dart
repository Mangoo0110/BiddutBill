
import 'dart:convert';

import 'package:e_bill/admin_panel/houseTab/data_layer/houseModel.dart';
import 'package:e_bill/admin_panel/usersTab/data_layer/user.dart';
import 'package:e_bill/api_connection/api_connection.dart';
import 'package:http/http.dart' as http;

class UserStorage{

  List<User>usersFromJson(String jsonString){
    final data = jsonDecode(jsonString);
    //print(data);
    return List<User>.from(
        (data.map((item) =>User.fromJson(item)))
    );
  }

  List<User> oneUserFromJson(String jsonString){
    final data = jsonDecode(jsonString);
    //print(data);
    return 
        List<User>.from((data.map((item) =>User.fromJson(item))));
  }

  Future<List<User>>fetchAllUsers()async{
      var result = await http.post(
        Uri.parse(API.userList),
      );
      if(result.statusCode == 200){
        List<User> list = usersFromJson(result.body);
        return list;
      }
      else {
        return <User>[];
      }

}

 Future<List<User>>fetchOneUser(
  {
    required String varsityId,
  }
 )async{
      var result = await http.post(
        Uri.parse(API.fetchOneUser),
        body: {
          "varsity_id" : varsityId,
        }
      );
      print(result.body);
      if(result.statusCode == 200){
        if(result.body == "")return <User>[];
        List<User> user = oneUserFromJson(result.body);
        return user;
      }
      else {
        return <User>[];
      }

}


}