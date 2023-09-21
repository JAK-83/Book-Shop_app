////this is not used

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Componants/Home%20Scr%20Componants/recommmended_container.dart';

import '../../data/home_scr_data/data_base.dart';
class recommended_list_builder_01 extends StatefulWidget {
 
  const recommended_list_builder_01({Key? key, }) : super(key: key);

  @override
  State<recommended_list_builder_01> createState() => _recommended_list_builder_01State();
}

class _recommended_list_builder_01State extends State<recommended_list_builder_01> {
 @override
  Widget build(BuildContext context) {
    return   
    Container(
      //color: Colors.red,
      width: MediaQuery.of(context).size.width,
      height: 189,//MediaQuery.of(context).size.height*0.3,
      child: ListView.builder(
                  itemCount:Dataa.Shop_data.length,
                  scrollDirection: Axis.horizontal,
                
                  itemBuilder: (BuildContext context,index){
                  
                  return recommended_container(
                    oontap: (){
                      setState((){
                        Dataa.addtocart_data.add(Dataa.Shop_data[index]);
                       });
                        },
                    img_url: Dataa.Shop_data[index]['img_url'],
                    title: Dataa.Shop_data[index]['title'],
                    price :Dataa.Shop_data[index]['price'],
                   // quantity: Dataa.Shop_data[index]['quantity'],
                    sub_title: Dataa.Shop_data[index]['sub_title'],
    
                    );
                  }
                ),
    )
   
;
  }
}



