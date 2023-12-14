import 'dart:convert';
import 'package:flutter_internship_assignment/model/api_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<CategoryModel> fetchUserData() async{
    var response = await http.get(Uri.parse('https://dummy.restapiexample.com/api/v1/employees'));

    if(response.statusCode == 200){
      return categoryModelFromJson(response.body);
    }
    else{
      throw Exception("Network Error");
    }
  }
}
