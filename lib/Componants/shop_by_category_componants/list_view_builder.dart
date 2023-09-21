import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Utills/def_colors.dart';
// ignore: unused_import
import 'package:project_01/Utills/imagess.dart';
import 'package:project_01/data/home_scr_data/data_base.dart';

class category_data extends StatefulWidget {
  final VoidCallback oontap;
  category_data({Key? key, required this.oontap}) : super(key: key);

  @override
  State<category_data> createState() => _category_dataState();
}

class _category_dataState extends State<category_data> {
  
  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24,right: 24,top: 27),
         // physics: NeverScrollableScrollPhysics(), // Disable inner grid scrolling
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 19.0,
            mainAxisSpacing: 19,
            
          ),
          itemCount: Dataa.Shop_data.length,
      itemBuilder: (BuildContext context, int shopIndex) {
        final shop = Dataa.Shop_data[shopIndex];
        final shopKey = shop.keys.first;
        final shopInfo = shop[shopKey];
       // final shopName = shop.values.first['shopName'];
    //    final books = shop.values.first['Books'] as List;  //use it when want to access book data

             return GestureDetector(
              onTap: widget.oontap,
               child: Container(
                height: 100, 
                width: 100, 
                decoration: BoxDecoration(
                  color:Rang.ByCategoryShopColor ,//Colors.red,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
             
                    //img 
                    Container(
                      margin: EdgeInsets.only(top: 20,left: 43,right: 43,bottom: 21),
                      height: 68, 
                      width: 68, 
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(image: NetworkImage(shopInfo['shop_pic_img_url']),fit: BoxFit.cover)
                      ),
             
             
                    ),
                   
                  //text 
                 Text(shopInfo['shopName'],style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Rang.ByCategoryShop_Text_Color,
                 ),),
             
                 Text(shopInfo['shopCategot'],style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Rang.ByCategoryShop_sub__Text_Color,
                 ),),
                  ],
                ),
             
               ),
             );
             //Column(
            //   children: [
            //     // Container(
            //     //   margin: EdgeInsets.only(
            //     //       top: 20, left: 43, right: 43, bottom: 21),
            //     //   height: 68,
            //     //   width: 68,
            //     //   decoration: BoxDecoration(
            //     //     color: Colors.black,
            //     //     borderRadius: BorderRadius.circular(12),
            //     //     image: DecorationImage(
            //     //       image: NetworkImage(
            //     //         (books[bookIndex]['Book_Cover_url']),
            //     //       ),
            //     //       fit: BoxFit.cover,
            //     //     ),
            //     //   ),
            //     // ),
            //     Text(
            //       ('Shop Name ${shopInfo['shopName']}'),
            //       style: TextStyle(
            //         color: Rang.ByCategoryShop_Text_Color,
            //         fontWeight: FontWeight.w600,
            //         fontSize: 13,
            //       ),
            //     ),Text(   shopInfo['shopCategot'],
                  
            //       style: TextStyle(
            //         color: Rang.ByCategoryShop_sub__Text_Color,
            //         fontWeight: FontWeight.w400,
            //         fontSize: 12,
            //       ),
            //     ),
                
            //   ],
            // );
          },
        );
      }
    
  }
  

































// GestureDetector(
//           onTap: () {
             

//             // Create a ShopDetails object with the selected data
//              if (shopInfo != null) {
//       // Create a ShopDetails object with the selected data
//       ShopDetails selectedShop = ShopDetails(
//         shopName: shopInfo['shopName']??'',
//         address: shopInfo['adress']??'',
//         category: shopInfo['category']??'',
//         img_url: shopInfo['img_url']??'',
//         category_subtitle: shopInfo['category_subtitle'],
//       );

//       // Navigate to the category_detail_screen and pass the selectedShop as an argument
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => product_screen(selectedShop: selectedShop,shpData: Dataa.shopByCategoryData[index],),
//         ),
//       );
//     }
            

           
//           },
//           child: Container(
//             height: 154,
//             width: 164,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               color: Rang.ByCategoryShopColor,
//             ),
//             child: Column(
//               children: [
//                 ////img container
//                 Container(
//                   margin:
//                       EdgeInsets.only(top: 20, left: 43, right: 43, bottom: 21),
//                   height: 68,
//                   width: 68,
//                   decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(12),
//                       image: DecorationImage(
//                           image: NetworkImage(
//                         (shopInfo['img_url']),
//                       ),fit: BoxFit.cover,
//                       )
//                       ),
//                 ),
//                 //////////////////
//                 Text(
//                   (shopInfo['shopName']),
//                   style: TextStyle(
//                     color: Rang.ByCategoryShop_Text_Color,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 13,
//                   ),
//                 ),

//                 Text(
//                   (shopInfo['shopName']),
//                   style: TextStyle(
//                     color: Rang.ByCategoryShop_sub__Text_Color,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );