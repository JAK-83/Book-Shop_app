import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_01/Screens/other%20screens/track_order.dart';
import 'package:project_01/data/home_scr_data/data_base.dart';

import '../../Componants/order screen componant/order_container.dart';

class order_screen extends StatefulWidget {
  order_screen({Key? key}) : super(key: key);

  @override
  State<order_screen> createState() => _order_screenState();
}

class _order_screenState extends State<order_screen> {
  int a=-1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50,left: 24,right: 24),
          child: Column(
            children: [
        ///back icone
        Row(
          children: [
            Image.asset("assets/icons/left.png"),
            SizedBox(width: 21,),
            Text("Orders",style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),)
          ],
        ),
        
        
              /////list view
              ListView.builder(
                shrinkWrap: true,
              itemCount: Dataa.orderHistory.length,
              itemBuilder: (BuildContext context, int index) {
          final orderItem = Dataa.orderHistory[index];
          final product = orderItem['product'];
          final timestamp = orderItem['timestamp'];
        
          // Access specific fields within the product
          final productName = product['BookName'];
          final productPrice = product['price'];
        
          // Parse the timestamp into a DateTime object
          final formattedTimestamp =
              DateFormat('yyyy-MM-dd HH:mm:ss').parse(timestamp);
        
           return order_container(
            date:DateFormat.yMMMd().add_jm().format(formattedTimestamp) ,
            condition: a,
            conditionontap: (){
              setState(() {
                a=index;
              });
            },
            
            price:productPrice.toString() ,
            indexx:index ,
            onntap:(){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>track_order(orderid:index ,)));
            } ,
            bookName:product['BookName'] ,
            url_pic:product['Book_Cover_url'] ,
           );

              },
            ),
            ],
          ),
        )
    )
    ;
  }
}
