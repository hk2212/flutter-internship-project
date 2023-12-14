import 'package:flutter_internship_assignment/controllers/api_services.dart';
import 'package:flutter_internship_assignment/model/api_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController{
  var isLoading = true.obs;

  var userList = <CategoryModel>[].obs;

  fetchUsers() async {
    try {
      isLoading(true);
      var userData = await ApiServices().fetchUserData();

      userList.addAll(userData as Iterable<CategoryModel>);
    }catch(e){
      print("error fetching users data $e");
    }finally {
      isLoading(false);
    }
  }
}