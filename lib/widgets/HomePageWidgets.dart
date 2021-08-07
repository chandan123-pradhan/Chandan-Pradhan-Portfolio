import 'package:flutter/material.dart';
import 'package:portfolio/utils/StringUtils.dart';
import 'package:portfolio/utils/Style.dart';
import 'package:portfolio/utils/color.dart';
import 'package:portfolio/utils/utils.dart';

class HomeScreenWidget{

Widget getInTouchBottom(){
  return MouseRegion(
       cursor: SystemMouseCursors.click,
    child: Container(
                            width:150,
                            height:Constant.BottomHeight,
                            decoration: BoxDecoration(
                              color: AppColors.GreenColor,
                              borderRadius: BorderRadius.circular(Constant.padding10)
                            ),
                            alignment: Alignment.center,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.touch_app_outlined,size:Constant.padding25,color:AppColors.WhiteColor),
                                Text(StringUtils.GET_IN_TOUCH,
                                  style:BottomTextStyle),
                              ],
                            ),
                            
                          ),
  );
                    
                    
}


Widget tabDecoraiton(isSelected,tabName){
  return MouseRegion(
       cursor: SystemMouseCursors.click,
    child: Container(
      width: 110,
      height:40,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(Constant.padding10),
        border: Border.all(width:1,color:isSelected?Colors.transparent:AppColors.WhiteColor),
        color: isSelected?AppColors.GreenColor:Colors.transparent
      ),
      alignment: Alignment.center,
      child:Text(tabName,style: BottomTextStyle,)
    ),
  );
}

}