import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Utills/def_colors.dart';
// ignore: unused_import
import 'package:project_01/Utills/imagess.dart';
class recommended_container extends StatefulWidget {
  final String title;
  final String sub_title;
  final String img_url;
  //final String quantity;
  final int price;
  final VoidCallback oontap;
  const recommended_container({Key? key, 
  required this.title, 
  required this.sub_title, 
  required this.img_url,
   //required this.quantity, 
   required this.price, 
   required this.oontap}) : super(key: key);

  @override
  State<recommended_container> createState() => _recommended_containerState();
}

class _recommended_containerState extends State<recommended_container> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
      //  margin: EdgeInsets.only(bottom: 10),
         height: 194,//MediaQuery.of(context).size.height*3,
         width:128,// MediaQuery.of(context).size.width*3,
                decoration: BoxDecoration(
                  color: Rang.recommended_container_color ,//Rang.recommended_container_color,
                  borderRadius: BorderRadius.circular(12),
                  ),
               
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                [
                  //img
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 30,right: 30,bottom: 25),
                child: Container(
                  height: 68,//MediaQuery.of(context).size.height*0.05,
                  width: 68,//MediaQuery.of(context).size.width*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image:NetworkImage(widget.img_url),
                // //  image: image,
                     fit: BoxFit.cover)
                  ),
                ),
              ),
    
              //text
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(widget.title,style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600
               ),),
            
                 Text(widget.sub_title,style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400
               ),),
                ],
              ),
            ),
    
           //last container with add icon
           Padding(
             padding: const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 12),
             child: Container(
               height: 24,
               width: 108,
               decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius:BorderRadius.circular(12)
               ),
               child: Row(
                children: [
                  SizedBox(width: 10,),
                  Text("Unit",style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400
                  ),),
                  SizedBox(width: 3,),
                  Text("\$${widget.price.toString()}",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),),
                  Spacer(),
                  GestureDetector(
                    onTap: widget.oontap,
                    child: Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xFF2A4BA0),
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(Icons.add)),
                  ),
                ],
               ),
             ),
           ),
    
    
                ],
               ),
         ),
    )
 ;
  }
}