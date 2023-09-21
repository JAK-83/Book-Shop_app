// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'Componants/Home Scr Componants/recommmended_container.dart';
// import 'data/home_scr_data/data_base.dart';
// class deletit extends StatefulWidget {
//   deletit({Key? key}) : super(key: key);

//   @override
//   State<deletit> createState() => _deletitState();
// }

// class _deletitState extends State<deletit> {
//    Dataa myData=Dataa();

//   @override
//   Widget build(BuildContext context) {
//     return   Container(
//       color: Colors.red,
//               width:MediaQuery.of(context).size.width,
//               height: 194,
//              // color: Colors.red,
             
//               child: ListView.builder(
//                 itemCount:Dataa.addtocart_data.length,
//                 scrollDirection: Axis.horizontal,
              
//                 itemBuilder: (BuildContext context,index){
                
//                 return recommended_container(
//                   oontap: (){
//                     setState(() {
//                     // myData.addtocart_data.add(myData.rEcommended_container_data[index]);
//                     // addToCartt(index);
//                     //  print(myData.addtocart_data.length);
//                      // addToCart(index);
//                     });
//                   },
//                   img_url: Dataa.addtocart_data[index]['img_url'],
//                   title: Dataa.addtocart_data[index]['title'],
//                   price :Dataa.addtocart_data[index]['sub_title'],
//                   quantity: Dataa.addtocart_data[index]['quantity'],
//                   sub_title: Dataa.addtocart_data[index]['sub_title'],

//                   );
//                 }
//               ),
//             )
// ;
//   }
// }