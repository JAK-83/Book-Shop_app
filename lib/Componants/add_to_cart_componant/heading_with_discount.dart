import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utills/def_colors.dart';
import '../../Utills/imagess.dart';
import '../../data/home_scr_data/data_base.dart';
class heading_with_discount extends StatefulWidget {
  heading_with_discount({Key? key}) : super(key: key);

  @override
  State<heading_with_discount> createState() => _heading_with_discountState();
}

class _heading_with_discountState extends State<heading_with_discount> {
  double containerHeight = 291;
double containerWidth = 376;
  @override

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * (containerHeight / 660), // Assuming a reference height of 812
    width: MediaQuery.of(context).size.width * (containerWidth / 375), // Assuming a reference width of 375
    
          decoration: BoxDecoration(color: Rang.addtocart_topCotainer_Color),
        ),
    
        //# txt
        Positioned(
          bottom: 2,
          left: 10,
          child: Text(
            "#",
            style: TextStyle(
                fontSize: 340,
                color: Color(0xFFF9B023),
                fontWeight: FontWeight.w300),
          ),
        ),
         
         //off txt 
           Positioned(top: 130,left: 270,right: 32,
                 child: Text("OFF!!",style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                  // fontWeight: FontWeight.w800
                 ),),),
    
        //# 25%
        Positioned(
          top: 138,
          left: 90,
          right: 32,
          child: Text(
            "25%",
            style: TextStyle(
                fontSize: 110,
                color: Colors.white,
                fontWeight: FontWeight.w800),
          ),
        ),
    
        ///icon
        Positioned(
            top: 49,
            left: 249,
            right: 41,
            child: Image.asset(
              'assets/icons/cartvector.png',
              width: 86,
              height: 50,
            )),
     
    ///back icon and cart length
    Positioned(
      top: 67, 
      left: 20,
      child: Row(
        children: [
          //bakc icon
           GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
             child: CircleAvatar(
                 backgroundImage: AssetImage(Pics_collection.back_icon),
                ),
           ),
       
       SizedBox(
        width: 38,
       ),
       ////cart length
       Text("Shoping Cart (${Dataa.addtocart_data.length.toString()})",
       style:TextStyle(
        fontSize: 16, 
        fontWeight: FontWeight.w400
       ) ,),
       
        ],
      ),
    ),
     
    
      
     Positioned(
      top: 280,
       child: Container(
        height: 49, 
        width: 376, 
        decoration: BoxDecoration(
          color: Rang.addtocart_usecode_Cotainer_Color,
        ),
        child:const Padding(
          padding: const EdgeInsets.only(left: 31),
          child: Row(
            children: [
              Text("Use code ",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),),
          Text("#SMIT",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),),
          Text(" at Checkouut",style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),),
            ],
          ),
        ),
       ),
     ),
    
    
      ],
    );
  }
}