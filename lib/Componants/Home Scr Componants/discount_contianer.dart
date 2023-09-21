// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';

import '../../Utills/def_colors.dart';
import '../../Utills/imagess.dart';
class discount_container extends StatelessWidget {
  final Color ccolor;
 // final String title_1;
 // final String title_2;
 // final String title_3;
 final String percentOffPrice;
  final String img_url;
  
  const discount_container({Key? key, 
  required this.ccolor, 
 // required this.title_1, 
 // required this.title_2,
  required this.img_url, required this.percentOffPrice,
  // required this.title_3
   }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top:0,left: 20,right: 10,),
        padding: EdgeInsets.only(top:10,left: 20,bottom: 10),
        height: MediaQuery.of(context).size.height*0.15,
        width: MediaQuery.of(context).size.width*0.76,
        decoration: BoxDecoration(
          color: ccolor,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          children: [
             
            //img
            Container(
              height: 68,//MediaQuery.of(context).size.height*.068,
              width: 68,//MediaQuery.of(context).size.width*.068,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                 image: DecorationImage(
                  image:NetworkImage(img_url),
            // //  image: image,
                 fit: BoxFit.cover)
              ),
            ),
             
              SizedBox(width: 30,),   

             //text 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Get",style: TextStyle(
               fontSize: 30,
               color: Rang.discount_card_text_color,

              ),),
              Text("${percentOffPrice.toString()}%OFF",style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.w600,
               color: Rang.discount_card_text_color,

              )),
              Text("on frist order",style: TextStyle(
               fontSize: 15,
               color: Rang.discount_card_text_color,

              )),
            ],),



          ],
        ),
       );
  }
}