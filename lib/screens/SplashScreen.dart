import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/screens/HomePage/HomePage.dart';
import 'package:portfolio/utils/ImageUtils.dart';
import 'package:portfolio/utils/StringUtils.dart';
import 'package:portfolio/utils/Style.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 
 void navigateToPage(){
   Timer(Duration(seconds: 3), (){
     Get.to(
       HomePage(),
       transition: Transition.rightToLeft,
       duration: Duration(seconds: 1)
     );
   });
 }

@override
  void initState() {
    
    super.initState();
    navigateToPage();
  }


  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageUtils.Background_Image,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Wrap(children: <Widget>[
            Lottie.asset(
              ImageUtils.Loading_Animation,
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
          ]),
          SizedBox(height: 40),
          Text(StringUtils.LOADING, style: WhiteHeadingTextStyle)
        ],
      ),
    ));
  }
}
