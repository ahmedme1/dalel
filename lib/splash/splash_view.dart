import 'package:dalell/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin{
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this , duration: Duration(seconds: 5));
    fadingAnimation = Tween<double>(begin: 1, end: 1).animate(animationController!);
    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children:  [
            SizedBox(
              height: 130,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Image(
                image: AssetImage('images/d3.png'),
              ),
            ),
            Center(
              child: FadeTransition(
                opacity: fadingAnimation!,
                child: Text(
                  ' دليل مطرطارس الطبي',
                  style: GoogleFonts.cairo(
                      color: Colors.red,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            CircularProgressIndicator(
              color: Colors.red,
            ),

          ],
        ),
      ),
    );

  }

}
void goToNextView(){
  Future.delayed(Duration(seconds: 3),()
  {

    Get.offAll(()=>HomePage(),transition: Transition.fade);

  });
}
