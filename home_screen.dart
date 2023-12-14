import 'package:flutter_internship_assignment/consts/consts.dart';
import 'package:flutter_internship_assignment/controllers/api_services.dart';
import 'package:flutter_internship_assignment/controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  UserController controller = Get.put(UserController());
  Widget build(BuildContext context) {
    
    TextEditingController tController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Employees"),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: (){
              addNew(tController);
            },
            child: Container(
             // width: 200,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Icon(Icons.add, size: 30,
                  color: whiteColor,
                  ),
                  SizedBox(width: 20,),
                  Text("Add New",
                  style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.5,
                  fontFamily: bold,
                  color: whiteColor,
                ),
                  ),
                ],
              )
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(children :const [
              Text("All Details",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              )
            ],),
            Expanded(child: ListView.builder(itemCount: controller.userList.length,
            itemBuilder: (context,i){
              return Obx(
                () =>  Column(
                  children: controller.userList.map((e) =>Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.add_circle,
                      color: whiteColor,
                      size: 30,),
                      SizedBox(width: 10,),
                      Text("Hii",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 20,
                      ),
                      ),
                        ],
                      ),
                      Row(children: [
                        IconButton(
                          onPressed: (){
                            editData(tController);
                          },
                          icon: Icon(Icons.edit,
                                            color: whiteColor,
                                            size: 30,),
                        ),
                      IconButton(
                        onPressed: (){
                          Get.defaultDialog(
                            title: "Delete Data",
                            content: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Do You Want to Delete ?")
                          ],
                        ),
                        30.heightBox,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          OutlinedButton(onPressed: (){
                            Get.back();
                          }, child: Text("No"),),
                          SizedBox(width: 30,),
                          ElevatedButton(onPressed: (){
                            print(tController.text);
                            Get.back();
                          }, child: Text("Yes")),
                        ],)
                      ],
                    )
                          );
                        },
                        icon: Icon(Icons.delete,
                        color: whiteColor,
                        size: 30,),
                      ),
                      ],),
                    ],
                  ),
                )).toList()));
            },
            ),
            )
          ],
        ) 
        ),
    );
    
  }

  void editData(TextEditingController tController) {
    Get.defaultDialog(
      title: "Edit Data",
      content: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: TextFormField(
                            decoration: InputDecoration(
                        hintText: "Edit Details",
                            ),
                            controller: tController,
                          ))
                        ],
                      ),
                      30.heightBox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        OutlinedButton(onPressed: (){
                          Get.back();
                        }, child: Text("Cancel"),),
                        SizedBox(width: 30,),
                        ElevatedButton(onPressed: (){
                          print(tController.text);
                          Get.back();
                        }, child: Text("Save")),
                      ],)
                    ],
                  )
    );
  }

  Future<dynamic> addNew(TextEditingController tController) {
    return Get.defaultDialog(
              title: "Enter New Task",
              content: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Details",
                        ),
                        controller: tController,
                      ))
                    ],
                  ),
                  30.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    OutlinedButton(onPressed: (){
                      Get.back();
                    }, child: Text("Cancel"),),
                    SizedBox(width: 30,),
                    ElevatedButton(onPressed: (){
                      print(tController.text);
                      Get.back();
                    }, child: Text("Save")),
                  ],)
                ],
              )
            );
  }
}
