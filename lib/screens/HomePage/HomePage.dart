import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/screens/HomeTab/HomeTab.dart';
import 'package:portfolio/utils/ImageUtils.dart';
import 'package:portfolio/utils/StringUtils.dart';
import 'package:portfolio/utils/Style.dart';
import 'package:portfolio/utils/color.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:portfolio/widgets/HomePageWidgets.dart';



class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
int tab=0;

void changeTab(index){
setState((){
  tab=index;
});
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        fit: StackFit.expand,

        children: <Widget>[
            Image.asset(
              ImageUtils.Background_Image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
        SafeArea(

         child:Column(
           children: [
               Padding(
                  padding: const EdgeInsets.only(left:10,top:15,bottom:15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(height:5,width:5),
                    Row(
                      children:
                      [
                  Bounce(
                   duration: Duration(milliseconds: 110),
                        onPressed: (){  
                     changeTab(0);
                      
                        },
                    child: HomeScreenWidget().tabDecoraiton(tab==0?true:false,"Home")),
                     SizedBox(width:10),
                    Bounce(
                       duration: Duration(milliseconds: 110),
                        onPressed: (){  
                     changeTab(1);
                      
                        },
                      
                      
                      child: HomeScreenWidget().tabDecoraiton(tab==1?true:false,"My Projects")),
                     SizedBox(width:10),
                Bounce(
                       duration: Duration(milliseconds: 110),
                        onPressed: (){  
                     changeTab(2);
                      
                        },
                    
                    
                    child: HomeScreenWidget().tabDecoraiton(tab==2?true:false,"Gallery")),
                     SizedBox(width:10),
 Bounce(
                       duration: Duration(milliseconds: 110),
                        onPressed: (){  
                     changeTab(3);
                      
                        },
                     
                     child: HomeScreenWidget().tabDecoraiton(tab==3?true:false,"About Me")),
                      SizedBox(width:30),
                    
                      ]
                    )
                    
                    ],
                  ),
                ),
             
         Expanded(
           child:HomeTab()
       
       
       
       
         ),
      
           ],
         )  )
      ],
      )
      
    );
  }
}