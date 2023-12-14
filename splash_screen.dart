import 'package:flutter_internship_assignment/consts/consts.dart';
import 'package:flutter_internship_assignment/widgets/app_logo_widget.dart';
import 'package:flutter_internship_assignment/screens/login_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}





class _SplashScreenState extends State<SplashScreen> {

changeScreen(){
  Future.delayed(const Duration(seconds: 3),(){
    Get.to(() => const LoginScreen());
  });
}

@override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300,)),
              20.heightBox,
              applogoWidget(),
              10.heightBox,
              appname.text.size(18).fontFamily(bold).make(),
              5.heightBox,
              appversion.text.fontFamily(semibold).white.size(12).make(),
              const Spacer(),
              credits.text.white.size(10).fontFamily(semibold).make(),
              30.heightBox,
          ],
        ),
      ),
    );
  }
}