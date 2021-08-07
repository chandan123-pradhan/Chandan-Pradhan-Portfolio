import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/ImageUtils.dart';
import 'package:portfolio/utils/StringUtils.dart';
import 'package:portfolio/utils/Style.dart';
import 'package:portfolio/utils/color.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:portfolio/widgets/HomePageWidgets.dart';



class HomeTab extends StatefulWidget {
  const HomeTab({ Key? key }) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return  ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:Constant.padding30,right:Constant.padding30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                      //      width:Get.width/1.5,
                        height: Get.height/1.2,
                        alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(StringUtils.CHANDANPRADHAN,
                              style:WhiteHeadingTextStyle),
                              //SizedBox(height:10),
                          Text("( "+StringUtils.APPLICATION_ENGINEER+ " )",
                              style:WhiteMiddimumSizeTextStyle),
                              SizedBox(height:10),
                          Text(StringUtils.MY_QUATS,
                              style:WhiteSmallTextStyle),
                          SizedBox(height:20),
                          Bounce(
                             duration: Duration(milliseconds: 110),
                        onPressed: (){  
                      print(Get.width);
                      
                        },
                            child: HomeScreenWidget().getInTouchBottom()
                        
                        
                          )
                          
                            ],
                          ),
                        ),
                      ),
                     
            Expanded(
                child: Lottie.asset(
                        ImageUtils.My_Intro_animatoni,
                       // width: Get.width/3,
                        height: Get.height/1.2,
                        fit: BoxFit.fill,
                      ),
              ),
                  
              
                  
                  
                    ],
                  ),
                ),
    SizedBox(height:40),
    //  Row(
    //    children: [
    //      Expanded(
    //        flex: 10,
           
    //        child: Container(
    //          alignment: Alignment.topLeft,
    //          child: Text(StringUtils.SKILLS,
    //                                   style:WhiteHeadingTextStyle),
    //        ),
    //      ),
    //    ],
    //  ),

 Padding(
                  padding: const EdgeInsets.only(left:Constant.padding30,right:Constant.padding30),
              
  child:   Row(

    children: [
     Expanded(
       flex: 2,
                child:Container()
              ),
          Expanded(
            child: Container(
            
                
            
                                        margin: EdgeInsets.only(bottom: 15.0),
            
                
            
                                        child: Row(
            
                
            
                                          children: [
            
                
            
                                            Expanded(
            
                
            
                                              flex: 50,
            
                
            
                                              child: Container(
            
                
            
                                                padding: EdgeInsets.only(left: 10.0),
            
                
            
                                                alignment: Alignment.centerLeft,
            
                
            
                                                height: 38.0,
            
                
            
                                                child: Text("Dart"),
            
                
            
                                                color: Colors.white,
            
                
            
                                              ),
            
                
            
                                            ),
            
                
            
                                            SizedBox(
            
                
            
                                              width: 10.0,
            
                
            
                                            ),
            
                
            
                                            Expanded(
            
                
            
                                              // remaining (blank part)
            
                
            
                                              flex: 100 - 50,
            
                
            
                                              child: Divider(
            
                
            
                                                color: Colors.white,
            
                
            
                                              ),
            
                
            
                                            ),
            
                
            
                                            SizedBox(
            
                
            
                                              width: 10.0,
            
                
            
                                            ),
            
                
            
                                            Text(
            
                
            
                                              "30%",
            
                
            
                                              style: TextStyle(
            
                
            
                                                color: Colors.white,
            
                
            
                                                fontSize: 16.0,
            
                
            
                                              ),
            
                
            
                                            )
            
                
            
                                          ],
            
                
            
                                        ),
            
                
            
                
            
                
            
                ),
          ),
  
    ],
  
  ),
)



              ],
            );
       
  }
}