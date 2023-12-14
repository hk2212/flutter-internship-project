import 'package:flutter_internship_assignment/consts/consts.dart';
import 'package:flutter_internship_assignment/controllers/home_controller.dart';
import 'package:flutter_internship_assignment/screens/home_screen.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var  navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,), label: home),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,), label: categories),
      BottomNavigationBarItem(icon: Image.asset(icChat,width: 26,), label: emp),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,), label: account),
    ];

    var navBody = [
       HomeScreen(),
      Container(color: Colors.blueAccent,),
      Container(color: Colors.yellow,),
      Container(color: Colors.white,),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Employee Data"),
      ),
     body: 
     Column(
       children: [
         Obx(()=> Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
         
       ],
     ),
     
     bottomNavigationBar: Obx(
      () => BottomNavigationBar(
        currentIndex: controller.currentNavIndex.value,
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: const TextStyle(fontFamily: semibold),
        items: navbarItem,
        onTap: (value){
          controller.currentNavIndex.value = value;
        },
        
        ),
     ),
     
    );
  }
}