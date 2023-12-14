import 'package:flutter_internship_assignment/consts/consts.dart';
import 'package:flutter_internship_assignment/consts/lists.dart';

import 'package:flutter_internship_assignment/screens/home_screen.dart';
import 'package:flutter_internship_assignment/widgets/app_logo_widget.dart';
import 'package:flutter_internship_assignment/widgets/bg_widget.dart';
import 'package:flutter_internship_assignment/widgets/buttons.dart';
import 'package:flutter_internship_assignment/widgets/custom_text_field.dart';
import 'package:flutter_internship_assignment/screens/reg_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * .1).heightBox,
              applogoWidget(),
              10.heightBox,
              "Log in Here ".text.white.size(18).fontFamily(semibold).make(),
              10.heightBox,

              Column(
                children: [
                 customTextField(hint: emailHint,title: email),
                 customTextField(hint: passwordHint, title: password),
                 Align(alignment: Alignment.centerRight,child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                 5.heightBox,
                 ourButton(color: redColor, title: login, textColor: whiteColor, onPress: (){
                  Get.to(() =>  HomeScreen());
                 })
                 .box
                 .width(context.screenWidth - 50)
                 .make(),
                 5.heightBox,
                 createNewAccount.text.color(fontGrey).make(),
                 5.heightBox,
                 ourButton(color: golden, title: signup, textColor: whiteColor, onPress: (){
                  Get.to(const Register());
                 })
                 .box
                 .width(context.screenWidth - 50)
                 .make(),
                 5.heightBox,
                 loginWith.text.color(fontGrey).make(),
                 5.heightBox,
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index],width: 30,),
                      
                    ),
                  ),)
                 ,)
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).make(),
            ],
          ),
        ),
      )
    );
  }
}