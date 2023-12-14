import 'package:flutter_internship_assignment/consts/consts.dart';
import 'package:flutter_internship_assignment/widgets/app_logo_widget.dart';
import 'package:flutter_internship_assignment/widgets/bg_widget.dart';
import 'package:flutter_internship_assignment/widgets/buttons.dart';
import 'package:flutter_internship_assignment/widgets/custom_text_field.dart';
import 'package:flutter_internship_assignment/screens/login_screen.dart';
import 'package:get/get.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool ? isCheck = false;
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
              "Registration Page ".text.white.size(18).fontFamily(semibold).make(),
              10.heightBox,

              Column(
                children: [
                customTextField(hint: nameHint, title: name),
                 customTextField(hint: emailHint,title: email),
                 customTextField(hint: passwordHint, title: password),
                 customTextField(hint: passwordHint, title: retypePassword),
                 
                 5.heightBox,
                 Row(
                  children: [
                    Checkbox(
                    value: isCheck, 
                    activeColor: whiteColor,
                    checkColor: Colors.blue,
                    onChanged: (newValue){
                      setState(() {
                        isCheck = newValue;
                      });
                    }),
                    10.widthBox,
                    Expanded(
                      child: RichText(text: const TextSpan(
                        children: [
                          TextSpan(text: "I agree to the", style: TextStyle(
                            fontFamily: semibold,
                            color: fontGrey,
                          )),
                          TextSpan(text: termAndCond, style: TextStyle(
                            fontFamily: semibold,
                            color: redColor,
                          )),
                          TextSpan(text: " & ", style: TextStyle(
                            fontFamily: semibold,
                            color: fontGrey,
                          )),
                          TextSpan(text: privacyPolicy, style: TextStyle(
                            fontFamily: semibold,
                            color: redColor,
                          )),
                        ]
                      )),
                    )
                  ],
                 ),
                 5.heightBox,
                 ourButton(color: isCheck == true ? redColor : lightGrey, title: signup, textColor: whiteColor, onPress: (){})
                 .box
                 .width(context.screenWidth - 50)
                 .make(),
                 
                 5.heightBox,
                 alreadyHaveAcc.text.color(fontGrey).make(),
                 5.heightBox,
                 ourButton(color: golden, title: login, textColor: whiteColor, onPress: (){
                  Get.to(const LoginScreen());
                 })
                 .box
                 .width(context.screenWidth - 50)
                 .make(),
                 5.heightBox,
                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).make(),
            ],
          ),
        ),
      )
    );
  }
}